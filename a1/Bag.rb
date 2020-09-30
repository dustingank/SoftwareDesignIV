# this is Bag class

require "./RandomizerContainer.rb"
require "./Clutch.rb"
require "./Coin.rb"
require "./Die.rb"

class Bag < RandomizerContainer

    def initialize()
        super
    end

    def select(description_hash, amount) #select items from Bag based on the description / return Clutch Object
        @clutch_object = Clutch.new
        count = 0

        
        
        if amount == :all
            for index in 0 ... @container_array.size
                @container_array[index].reset() #reset everything into 0
                @clutch_object.store(@container_array[index])
            end
            return @clutch_object
        end

        if description_hash[:item] == :coin
            for index in 0 ... @container_array.size
                if @container_array[index].get_type() == :coin
                    if description_hash.key?(:denomination) && @container_array[index].denomination() == description_hash[:denomination]
                        count = count + 1
                        @container_array[index].reset() #reset everything into 0
                        @clutch_object.store(@container_array[index])
    
                        if count == amount
                            return @clutch_object
                        end
                    end
                    
                    if !description_hash.key?(:denomination)
                        count = count + 1
                        @container_array[index].reset() #reset everything into 0
                        @clutch_object.store(@container_array[index])
    
                        if count == amount
                            return @clutch_object
                        end
                    end
                end 
            end
            return @clutch_object
        end

        if description_hash[:item] == :die
            for index in 0 ... @container_array.size
                if @container_array[index].get_type() == :die
                    if description_hash.key?(:sides) && @container_array[index].sides() == description_hash[:sides]
                        if description_hash.key?(:colour) && @container_array[index].colour() == description_hash[:colour]
                            count = count + 1
                            @container_array[index].reset() #reset everything into 0
                            @clutch_object.store(@container_array[index])
    
                            if count == amount
                                return @clutch_object
                            end
                        end
    
                        if !description_hash.key?(:colour)
                            count = count + 1
                            @container_array[index].reset() #reset everything into 0
                            @clutch_object.store(@container_array[index])
    
                            if count == amount
                                return @clutch_object
                            end
                        end
                    end
    
                    if description_hash.key?(:colour) && @container_array[index].colour() == description_hash[:colour] && !description_hash.key?(:sides)
                        count = count + 1
                        @container_array[index].reset() #reset everything into 0
                        @clutch_object.store(@container_array[index])
    
                        if count == amount
                            return @clutch_object
                        end
                    end
    
                    if !description_hash.key?(:colour) && !description_hash.key?(:sides)
                        count = count + 1
                        @container_array[index].reset() #reset everything into 0
                        @clutch_object.store(@container_array[index])
    
                        if count == amount
                            return @clutch_object
                        end
                    end
                end
            end
            return @clutch_object
        end
        
    end


    def empty()
        @clutch_object = Clutch.new
        for index in 0 ... @container_array.size
            @container_array[index].reset()
            @clutch_object.store(@container_array[index])
        end
    end
    
end