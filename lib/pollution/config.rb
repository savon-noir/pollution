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

#{
#	"type"=>"AWS", "access_key"=>"AKIAINQ2AU56H45EVFFA", "access_secret"=>"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", "region"=>"us-east-1", 
#	"images"=>
#		{
#		"centos-01"=> {"name"=>"webserver", "distribution"=>"centos", "architecture"=>"64"}, 
#		"centos-02"=> {"name"=>"webserver2", "distribution"=>"centos", "architecture"=>"64"}
#                }
#}
