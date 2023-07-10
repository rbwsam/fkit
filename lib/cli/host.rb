require_relative 'sub_command_base'
require_relative 'config'

module CLI
  CONFIG_FILE = 'fkit.yml'

  class Host < SubCommandBase
    desc "add URI", "Add a new host to the list of known hosts"

    def add(uri)
      c = Config.new CONFIG_FILE
      c.load
      c.hosts.add uri
      c.save
    end
  end
end