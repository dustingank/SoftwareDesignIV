#this is Coin class
require "./Randomizer.rb"
require "./RandomizerFactory.rb"

class Coin < Randomizer
    

    def initialize(denomination_enum)
        @denomination_enum = denomination_enum
        @randomize_result = -2
        @randomizeCount_int = 0
    end

    def denomination() #returns the denomination of the coin
        @denomination_enum
    end

    def flip() #flips the coin and returns the "flipped" coin
        @randomize_result = rand(0 .. 1)
        @randomizeCount_int = @randomizeCount_int + 1
        self
    end

    def sideup() #returns :H or :T or nil
        if @randomize_result == 0
            return :H
        elsif @randomize_result == 1
            return :T
        else
            return nil
        end
    end 
end