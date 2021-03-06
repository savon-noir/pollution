#!/usr/bin/env ruby
#
require 'fog'
require 'rubygems'
require File.join(File.dirname(__FILE__), 'images')

module Pollution
    module Driver

    class AWS
        attr_reader :type
        attr_reader :images
       
        def initialize(config)
             @access_key = config['access_key']
             @access_secret = config['access_secret']
	     @type = config['type']

             @pconnector = Fog::Compute.new({
                                  :provider => :aws,
                                  :aws_access_key_id => @access_key,
                                  :aws_secret_access_key => @access_secret,
             })

             @images = Pollution::Resources::AWS::Images.new(config)
        end

        def get_servers()
             return @pconnector.servers
        end

        def get_vpcs()
             return @pconnector.vpcs
        end

        def list_servers()
             puts @pconnector.servers.table([:id, :flavor_id, :public_ip_address, :private_ip_address, :image_id ])
        end
    end        # end class Provider

    end    # module EC2
end            # module Pollution



