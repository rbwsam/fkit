require 'thor'

module CLI
  class CommandBase < Thor
    # https://github.com/rails/thor/wiki/Making-An-Executable
    def self.exit_on_failure?
      true
    end
  end
end