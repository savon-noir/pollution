#!/usr/bin/env ruby
#
module Pollution
    module Resources

    class Images
        def initialize(libpath="/tmp/test.yaml")
            @libpath = libpath
            @imglist = Array.new()
        end

        def get_favorites()
            # create definition online
            puts "No provider defined: cannot stage server"
        end
        
        def destroy()
            # destroy definition online
            puts "No provider defined: cannot destroy server"
        end
    end     # end Class Machine

    end  # end Resources
end      # end Pollution
