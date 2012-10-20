#!/usr/bin/env ruby

module Pollution
    module Provider
        def self.new(config)
             @type = config.type
             case @type
             when "AWS"
                 require File.join(File.dirname(__FILE__), 'ec2')
                 Pollution::Provider::EC2.new(config)
             else
                 puts "error: no provider type defined"
             end
        end
    end        # module Provider
end            # module Pollution
