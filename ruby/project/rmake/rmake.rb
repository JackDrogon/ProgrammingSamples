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
  def initialize(cmd)
    @cmd = cmd
  end

  def build
    puts "  --> #{@cmd}"
    `#{@cmd}`
  end
end

class Target
  attr_reader :name, :deps

  def initialize(name, deps, cmds)
    @name = name
    @deps = deps
    @tasks = (cmds || []).map { |cmd| Task.new(cmd) }
  end

  def build
    @tasks.each(&:build)
  end
end

class RMake
  include EnvHelper

  def initialize(env, rmakefile, target)
    @env = env
    @rmakefile = rmakefile
    @tasks = {}
    @deps = {}

    @target = target
    @first_target = nil

    @targets = []

    _parse
  end

  def build(target)
    # Check target must need rule
    build_targets = _target_deps(target)
    build_tasks = build_targets.map { |target_arg| Target.new(target_arg, @deps[target_arg], @tasks[target_arg]) }

    built_targets = {}
    loop do
      break if build_tasks.empty?

      task = build_tasks.shift
      running_target_name = task.name
      if built_targets[running_target_name]
        verbose { pp "target:#{running_target_name} has been built" }
        next
      end

      puts "building #{running_target_name}"
      built_targets[running_target_name] = true
      task.build
    end
  end

  def list_targets
    @deps.keys
  end

  def run
    target = _get_target
    unless target
      puts 'not found target'
      exit(1)
    end

    verbose { puts '-------------------------' }
    build target
  end

  private

  def _need_rebuild?(target, deps)
    return true unless File.exist?(target)

    deps.each do |dep|
      return true unless File.exist?(dep)

      return true if File.mtime(target) < File.mtime(dep)
    end

    false
  end

  def _get_target
    return @target if @target

    @first_target
  end

  def _parse
    current_target = nil

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
          @deps[current_target] ||= []
          next
        end

        unless current_target
          puts 'found rule before target'
          exit(1)
        end
        (@tasks[current_target] ||= []) << rule[0]
      when 2
        # ["total", "1.o 2.c 2.h 1.h"]
        target_name = rule[0]
        deps = rule[1].split.map(&:strip)
        @first_target ||= target_name
        current_target = target_name
        (@deps[current_target] ||= []).concat(deps)
      end
    end

    @targets = @deps.map{|name, deps| Target.new(name, deps, @tasks[name])}

    verbose { pp @first_target }
    verbose { pp @deps }
    verbose { pp @tasks }
    verbose { pp @targets }
  end

  def _target_deps(target)
    deps = []
    target_deps = @deps[target]

    return deps if target_deps.nil?

    if target_deps.empty?
      deps << target
      return deps
    end

    target_deps.each do |target_dep|
      deps = _target_deps(target_dep) + deps
    end
    if !deps.empty?
      deps << target
    elsif _need_rebuild?(target, target_deps)
      deps << target
    end
    deps
  end
end

def main
  target = nil
  target = ARGV[0] unless ARGV.empty?

  rmake = RMake.new(Env.new(ENV.to_hash), RMAKEFILE, target)
  puts '================================='
  puts '----- list targets -----'
  puts rmake.list_targets
  puts '================================='
  rmake.run
end

main if $LAST_READ_LINE != __FILE__
