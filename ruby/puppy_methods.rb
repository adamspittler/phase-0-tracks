class Puppy
end

class Puppy
  
  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end



  def speak(bark_number)
    bark_number.times {|i| p "woof"} 
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    puts human_years * 7
  end
   
  def sit
    puts "dog sits down."
  end
  
end



#spike = Puppy.new 
#
#spike.fetch("ball")
#spike.speak(5)
#spike.roll_over
#spike.dog_years(3)
#spike.sit


class Rabbits
  
  def initialize
    puts "Here's a new rabbit."
  end
  
  def hop(num_jumps)
    puts "rabbit hops #{num_jumps} times"
  end
  
  def eat_carrot
    puts "rabbit eats carrot"
  end
  
end

bunny = []

for i in 0..49
  bunny[i] = Rabbits.new
end
p bunny

bunny.each do |rabbit|
  rabbit.eat_carrot
end

#rabbit = Rabbits.new
#rabbit.hop(3)
#rabbit.eat_carrot



