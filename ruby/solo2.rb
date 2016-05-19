# Define a class; dice. 
  # Has attr reader for number of sides, total_rolls and number of times rolled. 
  # Has attr accessor for color.



  # Class method: Initialize, takes arguments for number of sides and color.
    # Attributes: 
      #number of sides 
      #color 
      #number of times rolled.
      #total_rolls (in an array)
    # Adds dice and attributes to array of dice.

  # Class method: Roll the dice,
    # Raises number of times rolled by one. 
    # Adds the result of the roll to the total_rolls array for the instance of the dice.
    # Returns: A random number between 1 and the number of sides.

  # Class method: Roll the dice multiple times, takes argument for number of times.
    # Raises number of times rolled by number of times.
    # Adds the result of each roll to the total_rolls array for the instance of the dice.
    # Prints: A random number between 1 and the number of sides for each number of times
    # Returns and prints: a sum of each roll.

# Define array for dice.

# User input: prompt user to create a die. Ask for number of sides and color.
  # Makes new instance of dice.
  # Prompts user would they like to roll the dice or make another instance of dice or quit.
  # This repeats until they quit.
  # When dice are rolled, calls roll the dice on all the instances of the dice and prints the results.
  # When user quits the contents of the array of dice.

class Dice
  attr_reader :number_of_sides, :times_rolled, :total_rolls
  attr_accessor :color

  def initialize(number_of_sides, color)
    total_rolls = []
    @number_of_sides = number_of_sides
    @color = color
    @times_rolled = 0
    @total_rolls = total_rolls
  end

  def roll_the_dice
    @times_rolled += 1
    dice_roll = rand(@number_of_sides) + 1
    total_rolls << dice_roll
    dice_roll
  end  

  def roll_multiple_times(number_of_times)
    rolls = []
    @times_rolled += number_of_times
    number_of_times.times do
      dice_roll = rand(@number_of_sides) + 1
      total_rolls << dice_roll
      rolls << dice_roll
    end
    rolls
  end

end

dice_created = []

puts "DICE!!!!!!"
puts "what color would you like  your die to be?"
color = gets.chomp
loop do
  puts "What shape would you like your die to be?"
  shape = gets.chomp
  if shape.upcase.downcase == "tetrahedron"
    dice = Dice.new(4, color)
  elsif shape.upcase.downcase == "cube"
    dice = Dice.new(6, color)
  elsif shape.upcase.downcase == "octahedron"
    dice = Dice.new(8, color)
  elsif shape.upcase.downcase == "pentagonal trapezohedron"
    dice = Dice.new(10, color)
  elsif shape.upcase.downcase == "dodecahedron"
    dice = Dice.new(12, color)
  elsif shape.upcase.downcase == "icosahedron"
    dice = Dice.new(20, color)        
  else puts "Please enter one of the following shapes common dice shapes: tetrahedron, cube, octahedron, pentagonal trapezohedron, dodecahedron or icosahedron."
  end
  dice_created << dice
  break if dice_created != [nil]
 end
#dice = Dice.new(6, "green")
# dice.roll_the_dice
# dice.roll_multiple_times(2)
#dice_created << dice
#
#dice = Dice.new(8, "white")
# dice.roll_the_dice
# dice.roll_multiple_times(2)
#dice_created << dice
#
#dice_created.each do | x |
#  p x.roll_the_dice
#end
#
#p dice_created
#