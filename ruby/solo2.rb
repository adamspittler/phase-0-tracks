# Define a class; dice. 
  # Has attr reader for number of sides, rolls and number of times rolled. 
  # Has attr accessor for color.



  # Class method: Initialize, takes arguments for number of sides and color.
    # Attributes: 
      #number of sides 
      #color 
      #number of times rolled.
      #rolls (in an array)
    # Adds dice and attributes to array of dice.

  # Class method: Roll the dice,
    # Raises number of times rolled by one. 
    # Adds the result of the roll to the rolls array for the instance of the dice.
    # Returns: A random number between 1 and the number of sides.

  # Class method: Roll the dice multiple times, takes argument for number of times.
    # Raises number of times rolled by number of times.
    # Adds the result of each roll to the rolls array for the instance of the dice.
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
  attr_reader :number_of_sides, :times_rolled, :rolls
  attr_accessor :color

  def initialize(number_of_sides, color)
    rolls = []
    @number_of_sides = number_of_sides
    @color = color
    @times_rolled = 0
    @rolls = rolls
  end












end

dice = Dice.new(6, "black")
p dice