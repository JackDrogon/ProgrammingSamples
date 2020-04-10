#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

RMAKEFILE="rmakefile"

class RMake
  def initialize(rmakefile, target)
    @rmakefile = rmakefile
    @rules = {}
    @deps = {}

    @target = target
    @first_target = nil
    @current_target = nil
  end

  def target_deps(target, deps_map)
    # contain self at last
    deps = [target]
    target_deps = deps_map[target]
    # pp target_deps
    unless target_deps
      return deps
    end

    target_deps.each do |target_dep|
      deps = target_deps(target_dep, deps_map) + deps
    end
    # pp "---", deps
    return deps
  end

  def build(build_targets)
    # TODO check target renew
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
      rule = @rules[target]
      unless rule
        next
      end
      rule.each do
        |r| pp "----> #{r}"
        `#{r}`
      end
    end
  end

  def run
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
          next
        end

        unless @current_target
          puts "found rule before target"
          exit(1)
        end
        (@rules[@current_target] ||= []) << rule[0]
      when 2
        target = rule[0]
        all_dep = rule[1].split.map(&:strip)
        @first_target ||= target
        @current_target = target
        # TODO: merge dep use array merge
        all_dep.each{|dep| (@deps[target] ||= []) << dep}
        # ["total", "1.o 2.c 2.h 1.h"]
      end
    end
    pp @first_target
    pp @deps
    pp @rules

    unless @target
      @target = @first_target
    end

    # build
    unless @target
      puts "not found target"
      exit(1)
    end

    puts "-------------------------"

    # TODO: PHONY target

    # def need_rebuild?(target, deps)
    #   unless File.exists self
    #     return true
    #   end
    # end

    # Check target must need rule
    # Check need build
    build_targets = target_deps(@target, @deps)
    pp build_targets
    build build_targets
  end
end


target = nil
unless ARGV.empty?
  target = ARGV[0]
end

rmake = RMake.new(RMAKEFILE, target)
rmake.run
