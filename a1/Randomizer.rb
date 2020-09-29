# this is Randomizer

class Randomizer
    
    def randomize() #both randomizes and returns the randomizer itself
        @randomizeCount_int = @randomizeCount_int + 1
        self
    end

    def result() # reutrns the result of the randomization, or nil if never randomized
        if @randomizeCount_int == 0
            "null"            
        else
            @randomize_result
        end
    end

    def randomize_count() # returns the number of randomizatons performed
        @randomizeCount_int
    end

    def reset() # set the result to nil and number of randomizations performed to 0
        @randomizeCount_int = 0
        @randomize_result = nil
    end

    def get_type()
        @randomize_item
    end

end