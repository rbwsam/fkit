require_relative 'sub_command_base'

module CLI
  class Host < SubCommandBase
    desc "add", "Add a new host to the list of known hosts"

    def add
      puts "adding a host..."
    end
  end
end