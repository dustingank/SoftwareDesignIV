# this is Die class
 
require "./Randomizer.rb"

class Die < Randomizer

    def initialize(sides_int, colour_enum)
        @sides_int = sides_int
        @colour_enum = colour_enum
        @randomize_result = -2
        @randomizeCount_int = 0
        @randomize_item = :die
    end
    
    def colour() #returns the denomination of the coin
        @colour_enum
    end

    def sides() #return the number is sides
        @sides_int
    end

    def roll() # randomizes and return the "rolled" die
        @randomize_result = rand(1 .. @sides_int)
        @randomizeCount_int = @randomizeCount_int + 1
        self
    end

    def sideup() #returns 1 .. sides or nill
        if  @randomizeCount_int == 0
            return nil             
        else
            return @randomize_result
        end
    end
end