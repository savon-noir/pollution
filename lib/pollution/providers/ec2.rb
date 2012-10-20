#!/usr/bin/env ruby
#
require 'fog'
require 'rubygems'

module Pollution
    module Provider

    class EC2
        attr_reader :type
       
        def initialize(config)
             @access_key = config.access_key
             @access_secret = config.access_secret
             @type = config.type

             @pconnector = Fog::Compute.new({
                                  :provider => @type,
                                  :aws_access_key_id => @access_key,
                                  :aws_secret_access_key => @access_secret,
             })
        end

        def get_servers()
             return @pconnector.servers
        end

        def get_vpcs()
             return @pconnector.vpcs
        end
    end        # end class Provider

    end    # module EC2
end            # module Pollution