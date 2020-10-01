# this is Player class

require "./RandomizerFactory.rb"
require "./Randomizer.rb"
require "./RandomizerContainer.rb"
require "./Bag.rb"
require "./Clutch.rb"
require "./Cup.rb"
require "./Coin.rb"
require "./Die.rb"


class Player
    def initialize(player_name) #is initialize a key word?
        @player_name = player_name
        @bag = Bag.new
        @cup = Cup.new
        @throwContainer_array = Array.new
        @repotr_array = Array.new      
    end

    def name() # return the name of the player
        @player_name
    end     

    def store(item_randomizer) # stores the item in the player's bag
        @bag.store(item_randomizer)
    end

    def add(rc_randomizer_container) # get each item in rc and stores it in the player's bag
        @bag.add(rc_randomizer_container)
    end

    def load(description_hash) # loads items from the player's bag to the player's cup based on teh description
        @cup.load(@bag.select(description_hash, 20))
    end

    def throw() # throws the cup, replace the items in the cup to the bag
        temp_object = @cup.throw()
        @throwContainer_array.push(temp_object)
        add(@cup.empty())
    end

    def clear() # clears all stored throws
        @throwContainer_array.clear
    end

    def tally(description_hash) # call tally on each stored throw and returns the combined values as an array
        @tally_array = Array.new
        for index in 0 ... @throwContainer_array.size
            tempTally_int = @throwContainer_array[index].tally(description_hash)
            @tally_array.push(tempTally_int)
        end
        #deep copty to report_array
        @tally_array
    end

    def sum(description_hash) # call sum on each stored throw and returns the combined values as an array
        @sum_array = Array.new
        for index in 0 ... @throwContainer_array.size
            tempSum_int = @throwContainer_array[index].sum(description_hash)
            @sum_array.push(tempSum_int)
        end
        #deep copty to report_array
        @sum_array
    end

    def report() # return the values as an array from the last tally or sum method call
        @repotr_array
    end

    # for testing purpose

    def show_bag()
        @bag.show()
    end
    def bag_size()
        @bag.size()
    end
    def show_cup()
        @cup.show()
    end
    def cup_size()
        @cup.size()
    end

end