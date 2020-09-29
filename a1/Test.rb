#this is Test clss
require "./RandomizerFactory.rb"
require "./Randomizer.rb"
require "./RandomizerContainer.rb"
require "./Bag.rb"
require "./Coin.rb"
require "./Die.rb"

class Test
    factory = RandomizerFactory.new
    coin  = factory.create_coin(1)
    die = factory.create_die(4, :red)
    


    puts "Before coin flip: #{coin.denomination()} #{coin.sideup()}";
    coin.flip()
    puts "coin flip once: #{coin.sideup()} #{coin.randomize_count()}"
    coin.flip()
    puts "coin flip twice: #{coin.sideup()} #{coin.randomize_count()}"
    coin.reset()
    puts "coin after reset : #{coin.sideup()} #{coin.randomize_count()}"
    puts "\n----------------------------------------------------"
    puts "\nBefore die flip: #{die.colour()} #{die.sides()}";
    die.roll()
    puts "die flip once: #{die.sideup()} #{die.randomize_count()}"
    die.roll()
    puts "die flip twice: #{die.sideup()} #{die.randomize_count()}"
    die.reset()
    puts "die after reset : #{die.sideup()} #{die.randomize_count()}"

    
    bag = Bag.new
    clutch = Clutch.new

    bag.store(coin)
    bag.store(die)

    puts "Size: #{clutch.size}"
    clutch = bag.select({item: :coin, denomination: 1}, 2)
    puts "Size: #{clutch.size}"

   # puts "#{die.colour()} #{die.sides()}"
   # puts "#{die1.colour()} #{die1.sides()}"
   # puts "#{die2.colour()} #{die2.sides()}"
   # puts "#{die3.colour()} #{die3.sides()}"

    


end