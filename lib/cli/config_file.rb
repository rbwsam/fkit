require 'psych'

module CLI
  class ConfigFile
    attr_accessor :data

    def self.load_file(file)
      c = new
      if File.exist?(file)
        data = Psych.load_file(file)
        c.data = data unless data == false
      end
      c
    end

    def initialize
      @data = { hosts: [] }
    end

    def save(file)
      File.write(file, Psych.dump(@data))
    end
  end
end