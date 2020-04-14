#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

RMAKEFILE="rmakefile"

class Task
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
  end

  def target_deps(target)
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
      deps = target_deps(target_dep) + deps
    end
    if !deps.empty?
      deps << target
    elsif _need_rebuild?(target, target_deps)
      deps << target
    end
    # pp "---", deps
    return deps
  end

  def build(build_targets)
    built_targets = {}
    loop do
      if build_targets.empty?
        break
      end

      target = build_targets.shift
      pp target
      if built_targets[target]
        pp "target:#{target} has been built"
        next
      end

      pp "building #{target}"
      built_targets[target] = true
      rules = @rules[target]
      task = Task.new(target, rules)
      task.build
    end
  end

  def build_deps
    lines = File.readlines(@rmakefile)
    lines.each do |line|
      rule = line.strip.split(":").map(&:strip)
      case rule.length
      when 0
        # []
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

  def run
    build_deps

    target = _get_target()
    unless target
      puts "not found target"
      exit(1)
    end

    puts "-------------------------"

    # Check target must need rule
    build_targets = target_deps(target)
    pp build_targets
    build build_targets
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

end


target = nil
unless ARGV.empty?
  target = ARGV[0]
end

rmake = RMake.new(RMAKEFILE, target)
rmake.run
