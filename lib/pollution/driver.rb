#!/usr/bin/env ruby

module Pollution
    module Driver
        def self.new(config)
             @type = config['type']
             case @type
             when "AWS"
                 require File.join(File.dirname(__FILE__), 'aws', 'aws')
                 Pollution::Driver::AWS.new(config)
             when "LIBVIRT"
                 require File.join(File.dirname(__FILE__), 'libvirt', 'libvirt')
                 Pollution::Driver::Libvirt.new(config)
             else
                 puts "error: no provider type defined"
             end
        end
    end        # module Driver
end            # module Pollution
