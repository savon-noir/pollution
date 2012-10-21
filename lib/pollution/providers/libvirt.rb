#!/usr/bin/env ruby
#
require 'fog'
require 'rubygems'

module Pollution
    module Provider

    class Libvirt
        attr_reader :type

        def initialize(config)
             @type = config.type

             @pconnector = Fog::Compute.new({
                                  :provider => :libvirt,
                                  :libvirt_uri => "qemu:///system"
             })
        end

        def get_servers()
             return @pconnector.servers
        end

        def get_vpcs()
             return @pconnector.vpcs
        end

        def list_servers()
             puts @pconnector.servers.table([:name])
        end
    end        # end class Provider

    end    # module Libvirt
end            # module Pollution
