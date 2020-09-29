#this is RandomizerContainer class

class RandomizerContainer
   
    def initialize()
        @container_array = Array.new
    end

    def store(randomizer_object) #store a randomizer in the container
        @container_array.push(randomizer_object)
    end

    def add (randomizer_container_object) #get each randomizer in rc & store it in self
        @temp_array = randomizer_container_object.get_container()

        for index in 0 ... @temp_array.size
            sotre(@temp_array[index])
        end
    end

    def empty() #removes all members of the container
        @container_array.clear
    end

    def get_container()
        @container_array
    end

end