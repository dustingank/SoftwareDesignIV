# this is Clutch class

require "./RandomizerContainer.rb"

class Clutch < RandomizerContainer

    def initialize()
        super
    end

    def next() # removes and returns the last objected added
        if @container_array.empty?
            return nil
        else
            return @container_array.pop 
        end
    end

    def empty() # return nil
        return nil
    end

    def size()
        @container_array.size
    end

end