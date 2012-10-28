#!/usr/bin/env ruby

module Pollution
   module Resources

class Images
    def initialize()
        raise NotImplementedError, "No provider defined. Platform object needs to be created"
    end

    def add_image(img)
        raise NotImplementedError, "No provider defined. Platform object needs to be created"
    end

    def del_image(img)
        raise NotImplementedError, "No provider defined. Platform object needs to be created"
    end

        
end

    end     # end Resources
end         # end Pollution
