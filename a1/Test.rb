#this is Test clss
require "./RandomizerFactory.rb"
require "./Randomizer.rb"
require "./RandomizerContainer.rb"
require "./Bag.rb"
require "./Clutch.rb"
require "./Cup.rb"
require "./Coin.rb"
require "./Die.rb"

class Test
    factory = RandomizerFactory.new
    bag = Bag.new
    clutch1 = Clutch.new
    clutch2 = Clutch.new
    clutch3 = Clutch.new
    clutch4 = Clutch.new
    clutch5 = Clutch.new


    #coin  = factory.create_coin(1)
    #die = factory.create_die(4, :red)
    
    for index in 0 ... 10
        coin = factory.create_coin(1)
        bag.store(coin)
    end

    for index in 0 ... 5
        coin = factory.create_coin(2)
        bag.store(coin)
    end

    for index in 0 ... 5
        die = factory.create_die(8, :red)
        bag.store(die)
    end

    for index in 0 ... 5
        die = factory.create_die(4, :red)
        bag.store(die)
    end

    for index in 0 ... 5
        die = factory.create_die(8, :blue)
        bag.store(die)
    end
 
    clutch1 = bag.select({item: :coin, denomination: 1}, 5)
    clutch2 = bag.select({item: :coin, denomination: 2}, 10)
    clutch3 = bag.select({item: :die, colour: :red}, 20)
    clutch4 = bag.select({item: :die, sides: 8}, 20)
    clutch5 = bag.select({item: :die, sides: 8, colour: :blue}, 10)

    puts "Size of clutch1: #{clutch1.size}"
    clutch1.show
    puts "Size of clutch2: #{clutch2.size}"
    clutch2.show
    puts "Size of clutch3: #{clutch3.size}"
    clutch3.show
    puts "Size of clutch4: #{clutch4.size}"
    clutch4.show
    puts "Size of clutch5: #{clutch5.size}"
    clutch5.show

    
   # puts "#{die.colour()} #{die.sides()}"
   # puts "#{die1.colour()} #{die1.sides()}"
   # puts "#{die2.colour()} #{die2.sides()}"
   # puts "#{die3.colour()} #{die3.sides()}"

    


end