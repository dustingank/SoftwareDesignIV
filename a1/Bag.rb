# this is Bag class

require "./RandomizerContainer.rb"
require "./Clutch.rb"

class Bag < RandomizerContainer

    def initialize()
        super
    end

    def select(description_hash, amount) #select items from Bag based on the description / return Clutch Object
        @clutch_object = Clutch.new
        

        if (amount == :all)
            for index in 0 ... @container_array.size
                @container_array[index].reset() #reset everything into 0
                @clutch_object.store(@container_array[index])
            end
            return @clutch_object
        end
    end


    def empty()
        @clutch_object = Clutch.new
        for index in 0 ... @container_array.size
            @container_array[index].reset()
            @clutch_object.store(@container_array[index])
        end
    end
    
end