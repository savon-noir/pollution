#!/usr/bin/env ruby

class Image
    def initialize(name, path=nil)
        @name = name
        @path = path
        @image_type = { "architecture" => "", "distribution" => "", "size" => 0 }
    end

    def set_type(imgtype)
        imgtype.each do |k, value| @image_type[k] = imgtype[k] end
    end
end
