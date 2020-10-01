#this is Test clss
require "./RandomizerFactory.rb"
require "./Randomizer.rb"
require "./RandomizerContainer.rb"
require "./Bag.rb"
require "./Clutch.rb"
require "./Cup.rb"
require "./Coin.rb"
require "./Die.rb"
require "./Player.rb"
require "./Throw.rb"


factory = RandomizerFactory.new
player = Player.new("Sam")
bag = Bag.new
puts "---------------- Test One ----------------"
coin_test = factory.create_coin(2)
puts "Coin Denomination: #{coin_test.denomination()} "
puts "---------------- End ---------------------\n\n"
puts "\n\n---------------- Test Two ----------------"
die_test = factory.create_die(6, :black)
puts "Die Sides: #{die_test.sides()} colour: #{die_test.colour()} "
puts "---------------- End ---------------------"


for index in 0 ... 10
    coin = factory.create_coin(1)
    player.store(coin)
end

for index in 0 ... 10
    coin = factory.create_coin(2)
    player.store(coin)
end

for index in 0 ... 10
    die = factory.create_die(8, :red)
    player.store(die)
end

for index in 0 ... 10
    die = factory.create_die(4, :red)
    player.store(die)
end

for index in 0 ... 10
    die = factory.create_die(8, :blue)
    player.store(die)
end

puts "\n\n---------------- Test Three ----------------"
puts "Player Bag Size: #{player.bag_size()}"
puts "---------------- End ---------------------"

puts "\n\n---------------- Test Four ----------------"
player.load({item: :die, colour: :red})
player.load({item: :coin, denomination: 1})
puts "Player Cup Size: #{player.cup_size()}"
player.throw()
player.throw()
player.throw()
puts "Player Cup Size(after throw): #{player.cup_size()}"
puts "Sum with {item: :die, colout: :red}: #{player.sum({item: :die, colour: :red})}"
puts "---------------- End ---------------------"


puts player.sum({item: :die, colour: :red})



#clutch1 = bag.load({item: :coin, denomination: 1}, 5)
#clutch2 = bag.select({item: :coin, denomination: 2}, 10)
#clutch3 = bag.select({item: :die, colour: :red}, 20)
#clutch4 = bag.select({item: :die, sides: 8}, 20)
#clutch5 = bag.select({item: :die, sides: 8, colour: :blue}, 10)

#puts "Size of clutch1: #{clutch1.size}"
#clutch1.show
#puts "Size of clutch2: #{clutch2.size}"
#clutch2.show
#puts "Size of clutch3: #{clutch3.size}"
#clutch3.show
#puts "Size of clutch4: #{clutch4.size}"
#clutch4.show
#puts "Size of clutch5: #{clutch5.size}"
#clutch5.show#


# puts "#{die.colour()} #{die.sides()}"
# puts "#{die1.colour()} #{die1.sides()}"
# puts "#{die2.colour()} #{die2.sides()}"
# puts "#{die3.colour()} #{die3.sides()}"

    

