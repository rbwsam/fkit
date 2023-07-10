require 'psych'
require 'set'

module CLI
  class Config
    # Set of host connection URI strings
    attr_accessor :hosts

    def initialize(file)
      @file = file
      @hosts = Set.new
    end

    def load
      if File.exist? @file
        data = Psych.load_file @file
        unless data == false
          @hosts = data[:hosts]
        end
      end
    end

    def save
      File.write(@file, to_yaml)
    end

    def to_yaml
      Psych.dump({ hosts: @hosts })
    end
  end
end