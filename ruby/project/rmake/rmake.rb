#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

RMAKEFILE="rmakefile"

class Task
  attr_reader :target

  def initialize(target, rules)
    @target = target
    @rules = rules ? rules : []
  end

  def build
    @rules.each do |rule|
      pp "----> #{rule}"
      `#{rule}`
    end
  end
end

class RMake
  def initialize(rmakefile, target)
    @rmakefile = rmakefile
    @rules = {}
    @deps = {}

    @target = target
    @first_target = nil
    @current_target = nil

    _parse
  end

  def build(target)
    # Check target must need rule
    build_targets = _target_deps(target)
    pp build_targets
    build_tasks = build_targets.map{|target_arg| Task.new(target_arg, @rules[target_arg])}

    built_targets = {}
    loop do
      if build_tasks.empty?
        break
      end

      task = build_tasks.shift
      running_target = task.target
      pp target
      if built_targets[running_target]
        pp "target:#{running_target} has been built"
        next
      end

      pp "building #{running_target}"
      built_targets[running_target] = true
      task.build
    end
  end

  def run
    target = _get_target()
    unless target
      puts "not found target"
      exit(1)
    end

    puts "-------------------------"
    build target
  end


private
  def _need_rebuild?(target, deps)
    if !File.exists?(target)
      return true
    end

    deps.each do |dep|
      unless File.exists?(dep)
        return true
      end

      if File.mtime(target) < File.mtime(dep)
        return true
      end
    end

    return false
  end

  def _get_target()
    if @target
      return @target
    end

    return @first_target
  end

  def _parse
    lines = File.readlines(@rmakefile)
    lines.each do |line|
      rule = line.strip.split(":").map(&:strip)
      case rule.length
      when 0
        # [], empty line
        # break
      when 1
        # ["gcc 1.o 2.c -o total"]
        # clean: => ["clean"]
        if line.strip.end_with?(":")
          @current_target = rule[0]
          @deps[@current_target] ||= []
          next
        end

        unless @current_target
          puts "found rule before target"
          exit(1)
        end
        (@rules[@current_target] ||= []) << rule[0]
      when 2
        # ["total", "1.o 2.c 2.h 1.h"]
        target = rule[0]
        all_dep = rule[1].split.map(&:strip)
        @first_target ||= target
        @current_target = target
        (@deps[@current_target] ||= []).concat(all_dep)
      end
    end
    pp @first_target
    pp @deps
    pp @rules
  end

  def _target_deps(target)
    # pp "find target:#{target} dep"
    deps = []
    target_deps = @deps[target]
    if target_deps == nil
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
    # pp "---", deps
    return deps
  end

end


target = nil
unless ARGV.empty?
  target = ARGV[0]
end

rmake = RMake.new(RMAKEFILE, target)
rmake.run
