#!/usr/bin/env ruby

module Pollution
   module Resources
       module EC2

class Images
    def initialize()
        @libpath = libpath
        @images = get_registred_images
    end

    def add(imgname, path)
        @images << Pollution::Resources::Libvirt::Image.new(imgname, path)
    end

    def del(imgname, index=nil)
        if(!@images.empty? and index and index.integer?)
           @images.delete_at(index)
        elsif((!@images.empty? and !index)
           @images.delete_if { |oimg| oimg.name == imgname }
        end
    end

    private

    def get_registred_images()
        oimglist = Array.new()
	
	

        return oimglist
    end
        
end

        end # end Libvirt
    end     # end Resources
end         # end Pollution
