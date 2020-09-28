#this is Test clss
require "./RandomizerFactory.rb"
require "./Randomizer.rb"
require "./Coin.rb"
require "./Die.rb"

class Test
    factory = RandomizerFactory.new
    coin  = factory.create_coin(1)
    

    die = factory.create_die(4, :red)
    die1 = factory.create_die(5, :green)
    die2 = factory.create_die(4, :blue)
    die3 = factory.create_die(4, :black)


    puts "#{coin.denomination()} #{coin.sideup()}";
   
    coin.flip()
    puts coin.sideup()
    puts coin.randomize_count()
   
    coin.reset()
    puts coin.randomize_count()


   # puts "#{die.colour()} #{die.sides()}"
   # puts "#{die1.colour()} #{die1.sides()}"
   # puts "#{die2.colour()} #{die2.sides()}"
   # puts "#{die3.colour()} #{die3.sides()}"

    


end