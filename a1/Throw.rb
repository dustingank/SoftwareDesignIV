# this is Throw class

require "./RandomizerContainer.rb"
require "./Bag.rb"
require "./Cup.rb"
require "./Clutch.rb"

class Throw

    def initialize
        @recoard_array = Array.new
        @report_int = 0
    end

    def return_item()
        @clutchReturn_object = Clutch.new

        @recoard_array.each{|o| @clutchReturn_object.store(o)}
        @clutchReturn_object
    end
    
    def tally(description_hash)
        @tallyTotal_int = 0;
        if description_hash[:item] == :coin
            for index in 0 ... @recoard_array.size
                if @clutchReturn_object[index].get_type() == :coin
                    if description_hash.key?(:denomination) && @recoard_array[index].denomination() == description_hash[:denomination]
                        if description_hash.key?(:up) && @recoard_array[index].sideup() == description_hash[:up]
                            @tallyTotal_int = @tallyTotal_int + 1
                        end

                        if !description_hash.key?(:up)
                            @tallyTotal_int = @tallyTotal_int + 1
                        end
                    end

                    if description_hash.key?(:up) && @recoard_array[index].sideup() == description_hash[:up]
                        @tallyTotal_int = @tallyTotal_int + 1
                    end

                    if !description_hash(:denomination) && !description_hash(:up)
                        @tallyTotal_int = @tallyTotal_int + 1
                    end
                end
            end
            @report_int = @tallyTotal_int
            return @tallyTotal_int
        end

        if description_hash[:item] = :die
            for index in 0 ... @recoard_array.size
                if @clutchReturn_object[index].get_type() == :die
                    if description_hash.key?(:sides) && @recoard_array[index].sides() == description_hash[:sides]
                        if description_hash.key?(:colour) && @recoard_array[index].colour() == description_hash[:colour]
                            if description_hash.key?(:up) && @recoard_array[index].sideup() == description_hash[:up]
                                @tallyTotal_int = @tallyTotal_int + 1 # die colour sides up
                            end
                            
                            if !description_hash.key?(:up)
                                @tallyTotal_int = @tallyTotal_int + 1 # die colour sides
                            end
                        end

                        if !description_hash.key?(:colour)
                            if description_hash.key?(:up) && @recoard_array[index].sideup() == description_hash[:up]
                                @tallyTotal_int = @tallyTotal_int + 1 # die sides up
                            end

                            if !description_hash.key?(:up)
                                @tallyTotal_int = @tallyTotal_int + 1 # die sides
                            end
                        end
                    end

                    if !description_hash.key?(:sides)
                        if description_hash.key?(:colour) && @recoard_array[index].colour() == description_hash[:colour]
                            if description_hash.key?(:up) && @recoard_array[index].sideup() == description_hash[:up]
                                @tallyTotal_int = @tallyTotal_int + 1 # die colour up
                            end

                            if !description_hash.key?(:up)
                                @tallyTotal_int = @tallyTotal_int + 1 # die colour
                            end
                        end

                        if !description_hash.key?(:colour)
                            if description_hash.key?(:up) && @recoard_array[index].sideup() == description_hash[:up]
                                @tallyTotal_int = @tallyTotal_int + 1 # die up
                            end

                            if !description_hash.key?(:up)
                                @tallyTotal_int = @tallyTotal_int + 1 # die
                            end
                        end
                    end
                end
            end
            @report_int = @tallyTotal_int
            return @tallyTotal_int
        end
    end

    def sum(description_hash)
        @sum_int = 0
        # maybe some error checking here?
        if description_hash[:item] == :coin
            for index in 0 ... @recoard_array.size
                if @recoard_array[index].get_type() == :coin
                    if description_hash.key?(:denomination) && @recoard_array[index].denomination() == description_hash[:denomination]
                        if @recoard_array[index].sideup() == :H
                            @sum_int = @sum_int + 1
                        else
                            @sum_int = @sum_int + 0
                        end
                    end

                    if !description_hash.key?(:denomination)
                        if @recoard_array[index].sideup() == :H
                            @sum_int = @sum_int + 1
                        else
                            @sum_int = @sum_int + 0
                        end
                    end
                end
            end
            @report_int = @sum_int
            return @sum_int
        end

        if description_hash[:item] == :die
            for index in 0 ... @recoard_array.size
                if @recoard_array[index].get_type() == :die
                    if description_hash.key?(:sides) && @recoard_array[index].sides() == description_hash[:sides]
                        if description_hash.key?(:colour) && @recoard_array[index].colour() == description_hash[:colour]
                            @sum_int = @sum_int + @recoard_array[index].sideup()
                        end

                        if !description_hash.key?(:colour)
                            @sum_int = @sum_int + @recoard_array[index].sideup()
                        end
                    end

                    if description_hash.key?(:colour) && @recoard_array[index].colour() == description_hash[:colour] && !description_hash.key?(:sides)
                        @sum_int = @sum_int + @recoard_array[index].sideup()
                    end

                    if !description_hash.key?(:colour) && !description_hash.key?(:sides)
                        @sum_int = @sum_int + @recoard_array[index].sideup()
                    end
                end
            end
            @report_int = @sum_int
            return @sum_int
        end

    end

    def report()
        @report_int
    end

    def add_randomizer(randomizer_object)
        @recoard_array.push(randomizer_object)
    end
end