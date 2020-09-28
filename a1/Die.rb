# this is Die class
 
require "./Randomizer.rb"

class Die < Randomizer

    def initialize(sides_int, colour_enum)

        @sides_int = sides_int
        @colour_enum = colour_enum
    end
    
    def colour() #returns the denomination of the coin
        @sides_int
    end

    def sides() #return the number is sides
        @colour_enum
    end

    def roll() # randomizes and return the "rolled" die
        
    end

    def sideup() #returns 1 .. sides or nill
        
    end
end