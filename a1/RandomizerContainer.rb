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

    # the following methods are for testing purpose
    def show()
        for index in 0 ... @container_array.size
            if @container_array[index].get_type == :coin
                puts "Item: coin Denomination: #{@container_array[index].denomination()}"
            end

            if @container_array[index].get_type == :die
                puts "Item: die colour: #{@container_array[index].colour()} sides: #{@container_array[index].sides()}"
            end
        end
    end

    def size()
        @container_array.size
    end

    def get_container()
        @container_array
    end

end