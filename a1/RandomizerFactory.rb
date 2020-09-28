# this is RandomizerFactory classy

require "./Randomizer.rb"
require "./Coin.rb"
require "./Die.rb"

randomizerItem_enum =[:coin => "coin", :die => "die"]
colour_enum = [:red => "red", :green => "green", :blue => "blue", :yellow => "yellow", :black => "black", :white => "white"] 
coinSide_enum =[:H => "head", :T => "tail"]
denomination = [0.05, 0.10, 0.25, 1, 2]

class RandomizerFactory
    
    def create_die(sides_int, colour_enum) 
        die_randomizer = Die.new(sides_int, colour_enum)
        die_randomizer
    end

    
    def create_coin(denomination_enum)
        coin_randomizer = Coin.new(denomination_enum)
        coin_randomizer 
    end
    
end