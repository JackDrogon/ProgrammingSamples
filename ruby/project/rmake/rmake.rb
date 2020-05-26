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
  attr_reader :target, :deps

  def initialize(target, deps, rules)
    @target = target
    @deps = deps
    @rules = rules || []
  end

  def build
    @rules.each do |rule|
      puts "  --> #{rule}"
      `#{rule}`
    end
  end
end

class RMake
  include EnvHelper

  def initialize(env, rmakefile, target)
    @env = env
    @rmakefile = rmakefile
    @rules = {}
    @deps = {}

    @target = target
    @first_target = nil

    _parse
  end

  def build(target)
    # Check target must need rule
    build_targets = _target_deps(target)
    build_tasks = build_targets.map { |target_arg| Task.new(target_arg, @deps[target_arg], @rules[target_arg]) }

    built_targets = {}
    loop do
      break if build_tasks.empty?

      task = build_tasks.shift
      running_target = task.target
      if built_targets[running_target]
        verbose { pp "target:#{running_target} has been built" }
        next
      end

      puts "building #{running_target}"
      built_targets[running_target] = true
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

    verbose { puts '-------------------------'}
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
        (@rules[current_target] ||= []) << rule[0]
      when 2
        # ["total", "1.o 2.c 2.h 1.h"]
        target = rule[0]
        all_dep = rule[1].split.map(&:strip)
        @first_target ||= target
        current_target = target
        (@deps[current_target] ||= []).concat(all_dep)
      end
    end
    verbose {pp @first_target}
    verbose {pp @deps}
    verbose {pp @rules}
  end

  def _target_deps(target)
    deps = []
    target_deps = @deps[target]
    if target_deps.nil?
      return deps
    elsif target_deps.empty?
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
