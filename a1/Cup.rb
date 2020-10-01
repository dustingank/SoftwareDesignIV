# this is Cup class

require "./RandomizerContainer.rb"
require "./Throw.rb"

class Cup < RandomizerContainer

    def initialize()
        super
    end

    def throw()
        @throwReturned_object = Throw.new
        for index in 0 ... @container_array.size
            
            if @container_array[index].get_type() == :coin
                @container_array[index].flip()
            end

            if @container_array[index].get_type() == :die
                @container_array[index].roll()
            end

            @throwReturned_object.add_randomizer(@container_array[index])
        end
        @throwReturned_object
    end

    def load(clutch_object)
        for index in 0 ... clutch_object.size()
            @container_array.push(clutch_object.next())
        end
    end

    def empty()
        @clutchReturn_object = Clutch.new

        for index in 0 ... @container_array.size
            @clutchReturn_object.store(@container_array[index])
        end

        @container_array.clear

        @clutchReturn_object
    end
    
end