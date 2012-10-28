#!/usr/bin/env ruby

module Pollution
   module Resources
       module AWS

#require 'image'
class Images
    def initialize(config=nil)
        @images = get_registred_images(config)
	puts "delelte"
    end

    def add(imgname, path)
 #A       @images << Pollution::Resources::EC2::Image.new(imgname, path)
        puts "not implemented yet"
    end

    def del(imgname, index=nil)
#        if(!@images.empty? and index and index.integer?)
#           @images.delete_at(index)
#        elsif((!@images.empty? and !index)
#           @images.delete_if { |oimg| oimg.name == imgname }
#        end
        puts "not implemented yet"
    end

    private

    def get_registred_images(config)
        oimglist = config["images"]
	puts oimglist
        return oimglist
    end
        
end

        end # end Libvirt
    end     # end Resources
end         # end Pollution


 
