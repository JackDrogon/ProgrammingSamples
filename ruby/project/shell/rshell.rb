#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

# TODO: catch exception

class BuiltinCommand
  def initialize(args)
    @args = args
    @is_exit = false
    @ret_code = 0
  end

  def run()
    return @ret_code, @is_exit
  end
end

class Exit < BuiltinCommand
  def initialize(args)
    super(args)
    @is_exit = true
  end

  def run()
    super
  end
end

class Print < BuiltinCommand
  def initialize(args)
    super(args)
  end

  def run()
    pp @args
    super
  end
end

class Help < BuiltinCommand
  def initialize(args)
    super(args)
  end

  def run()
    help()
    super
  end

private
  def help()
    puts "Help: exit/print/help"
  end
end

BUILTIN_COMMANDS = {"exit" => Exit, "print" => Print, "help" => Help}

class ExternalCommand
  def initialize(args)
    @args = args
    @is_exit = false
  end

  def run()
    # TODO: Add waitpid
    pp "External", @args
    return 0, @is_exit
  end
end

class Command
  def initialize(args)
    @command_name = args[0]
    builtin = BUILTIN_COMMANDS[@command_name]
    @command = if builtin
      builtin.new(args)
    else
      ExternalCommand.new(args)
    end
  end

  def run()
    @command.run
  end
end

def get_args()
  gets.strip.split # %r{[\r\n\t\a]}
end

def shell_loop()
  loop do
    print "rshell> "
    ret_code, is_exit = Command.new(get_args()).run
    if is_exit
      exit ret_code
    end
  end
end

def main()
  shell_loop
end

main
