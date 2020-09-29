# this is Cup class

require "./RandomizerContainer.rb"

class Cup < RandomizerContainer

    def initialize()
        super
    end

    def throw()
        for index in @container_array
            if @container_array[index].get_type() == :coin
                @container_array[index].flip()
            end

            if @container_array[index].get_type() == :die
                @container_array[index].roll()
            end

            #TODO: create a Throw object
        end
        #TODO: return new Throw object
    end

    def load(clutch_object)
        @temp_array = clutch_object.get_container()

        for index in 0 ... @temp_array.size
            sotre(@temp_array[index])
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