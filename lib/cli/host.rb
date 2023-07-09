require_relative 'sub_command_base'
require_relative 'config_file'

module CLI
  class Host < SubCommandBase
    desc "add URI", "Add a new host to the list of known hosts"

    def add(uri)
      c = ConfigFile.load_file 'fkit.yaml'
      c.data[:hosts].append(uri)
      c.save('fkit.yaml')
    end
  end
end