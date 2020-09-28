# this is Player class

class Player
    def initialize(player_name) #is initialize a key word?
        @player_name = player_name         
    end

    def name() # return the name of the player
        player_name
    end

    def store(item_randomizer) # stores the item in the player's bag
        
    end

    def add(rc_randomizer_container) # get each item in rc and stores it in the player's bag
        
    end

    def load(description_hash) # loads items from the player's bag to the player's cup based on teh description
        
    end

    def throw() # throws the cup, replace the imtes in the cup to the bag

    end

    def clear() # clears all stored throws

    end

    def tally(descriptionHash) # call tally on each stored throw and returns the combined values as an array
    
    end

    def sum(descriptionHash) # call sum on each stored throw and returns the combined values as an array
    
    end

    def report() # return the values as an array from the last tally or sum method call

    end

end