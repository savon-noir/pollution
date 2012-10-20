#!/usr/bin/env ruby
#
module Pollution
    module Generic

    class Machine
        attr_reader :name
        attr_reader :network
        attr_reader :ipaddress

        def initialize(name)
            @name = name
            @network = nil
            @ipaddress = nil
            @architecture = nil

            @image = nil
            @acl = nil
            @provider = "generic"
        end

        def create()
            # create definition online
            puts "No provider defined: cannot stage server"
        end
        
        def destroy()
            # destroy definition online
            puts "No provider defined: cannot destroy server"
        end
    end     # end Class Machine

    end  # end Generic
end      # end Pollution
