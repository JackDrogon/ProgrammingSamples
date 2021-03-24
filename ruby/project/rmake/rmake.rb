#!/usr/bin/env ruby
# frozen_string_literal: true

RMAKEFILE = 'rmakefile'

module EnvHelper
  def verbose
    if @env['VERBOSE']
      yield if block_given?
    end
  end
end

class Env
  def initialize(child)
    @child = child
    @table = {}
  end

  def [](key)
    @table[key] || @child[key]
  end

  def []=(key, value)
    if @table[key]
      @table[key] = value
    else
      @child[key] = value
    end
  end
end

class Task
  def initialize(env, cmd)
    @env = env
    @cmd = cmd
    @verbose = nil
  end

  def build
    verbose {puts "  --> #{@cmd}"}
    output = `#{@cmd}`
    print output
  end

private
  def verbose
    if @verbose.nil?
      # nil run first
      @verbose = true
      if @cmd.start_with?("@")
        @verbose = false
        @cmd[0] = ''
      end
    end

    if @verbose
      yield if block_given?
    end
  end
end

class Target
  attr_reader :name, :deps

  def initialize(env, name, deps, cmds, target_map)
    @env = env
    @name = name
    @deps = deps
    @tasks = (cmds || []).map { |cmd| Task.new(env, cmd) }
    @target_map = target_map
    @need_rebuild = nil
  end

  def rebuild?
    @need_rebuild = _rebuild? if @need_rebuild.nil?
    @need_rebuild
  end

  def build
    return unless rebuild?

    @deps.each do |dep|
      target = @target_map[dep]
      target&.build
    end
    @tasks.each(&:build)
    @need_rebuild = false
  end

  private

  def _rebuild?
    return true unless File.exist?(@name)

    @deps.any? do |dep|
      # PHONY task
      return true unless File.exist?(dep)

      target = @target_map[dep]
      if target.nil?
        # File task
        File.mtime(@name) < File.mtime(dep)
      elsif target.rebuild?
        true
      else
        File.mtime(@name) < File.mtime(target.name)
      end
    end
  end
end

class RMake
  include EnvHelper

  def initialize(env, rmakefile, target_name)
    @env = env
    @rmakefile = rmakefile

    @target_name = target_name
    @target_map = {}
    @targets = []

    _parse
  end

  def build
    target = @target_map[@target_name]
    target.build
  end

  def list_targets
    @target_map.keys
  end

  def run
    # TODO: check target not found
    unless @target_name
      puts "target #{@target_name} not found"
      exit(1)
    end

    verbose { puts '-------------------------' }
    build
  end

  private

  def _get_target
    return @target if @target

    @first_target
  end

  def _parse
    current_target = nil
    first_target = nil
    all_deps = {}
    tasks = {}

    lines = File.readlines(@rmakefile)
    lines.each do |line|
      rule = line.strip.split(':').map(&:strip)
      case rule.length
      when 0
        # [], empty line
        # break
      when 1
        # ["gcc 1.o 2.c -o total"]
        # clean: => ["clean"]
        if line.strip.end_with?(':')
          current_target = rule[0]
          all_deps[current_target] ||= []
          next
        end

        unless current_target
          puts 'found rule before target'
          exit(1)
        end
        (tasks[current_target] ||= []) << rule[0]
      when 2
        # ["total", "1.o 2.c 2.h 1.h"]
        target_name = rule[0]
        target_deps = rule[1].split.map(&:strip)
        first_target ||= target_name
        current_target = target_name
        (all_deps[current_target] ||= []).concat(target_deps)
      end
    end

    @target_name ||= first_target
    @targets = all_deps.map { |name, deps| Target.new(@env, name, deps, tasks[name], @target_map) }
    @targets.each { |t| @target_map[t.name] = t }

    verbose { pp @target_name }
    verbose { pp all_deps }
    verbose { pp tasks }
    verbose { pp @targets }
  end
end

def main
  target_name = nil
  target_name = ARGV[0] unless ARGV.empty?

  rmake = RMake.new(Env.new(ENV.to_hash), RMAKEFILE, target_name)
  puts '================================='
  puts '----- list targets -----'
  puts rmake.list_targets
  puts '================================='
  rmake.run
end

main if $LAST_READ_LINE != __FILE__
