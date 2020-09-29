# this is RandomizerFactory classy

require "./Randomizer.rb"
require "./Coin.rb"
require "./Die.rb"

RandomizerItems = [:coin, :die]
Denomination = [0.05, 0.01, 0.25, 1, 2]
Colour = [:red, :green, :blue, :yellow, :black, :white]
CoinSide = [:H, :T]

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