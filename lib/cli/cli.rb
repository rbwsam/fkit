require_relative 'command_base'
require_relative 'host'

module CLI
  class CLI < CommandBase
    desc 'host', 'Manage the list of known hosts'
    subcommand 'host', Host
  end
end