#!/usr/bin/env ruby

require 'singleton'
require 'yaml'

module Pollution

class Config
    include Singleton
    def load(file=nil)
        @configfile = file
        @config = load_file(@configfile) if @configfile
        @provider = @config['provider']['type']
    end

    def get(section)
        return @config['provider']
    end

    private
    def load_file(file=nil)
        return YAML::load_file(@configfile)
    end
end

end
