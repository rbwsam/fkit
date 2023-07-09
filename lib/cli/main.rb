require 'thor'
require_relative 'command_base'
require_relative 'host'

module CLI
  class Main < CommandBase
    desc "host", "Manage the list of known hosts"
    subcommand "host", Host
  end
end