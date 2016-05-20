# Define a class: dice. 
  # Has attr reader for number of sides, total_rolls and number of times rolled. 
  # Has attr accessor for color.

  # Class method: Initialize, takes arguments for number of sides and color.
    # Attributes: 
      #number of sides 
      #color 
      #number of times rolled.
      #total_rolls (in an array)
    # Adds dice and attributes to array of dice.

  # Class method: Roll the dice.
    # Raises number of times rolled by one. 
    # Adds the result of the roll to the total_rolls array for the instance of the dice.
    # Returns: A random number between 1 and the number of sides.

  # Class method: Roll the dice multiple times, takes argument for number of times.
    # Raises number of times rolled by number of times.
    # Adds the result of each roll to the total_rolls array for the instance of the dice.
    # Prints: A random number between 1 and the number of sides for each number of times
    # Returns and prints: a sum of each roll.

  # Class method: About.
    # Returns a string that lists the attributes of that instance.

# Define array to store dice info.

# Non class methods to be used in user interface:
  
  # Method: Dice Maker, takes a string.
  # Color value splits the string into an array of characters and deletes the numbers before rejoining.
  # Sides value removes the color value from the string leaving only integers.
  # Initializes a new instance of dice using above values.
  # Prints string about new dice.
  # Returns the dice.

  # Method: Roll all the dice, takes an array of dice(from the dice created array).
    # Defines an array called rolls.
    # Calls roll the dice on on each instance of dice in the inputted array.
    # Adds the result to rolls.
    #Returns rolls array. 

# USER INTERFACE
  # Prompts the user to input a string.
  # Calls dice maker method on the string and adds the result to dice created array.
  # Prompts user for a number.
  # Calls the roll multiple times method on the contents of the dice created array with the argument of the inputted number.
  # Runs loop prompting user to roll all the dice make another one or be done.
  # Breaks if input is the word done.
  # IF input includes the string "roll" calls roll all dice method.
  # ELSE Prompts the user to input a string.
  # Calls dice maker method on the string and adds the result to dice created array.
  # When loop breaks, calls the about method on the instances in the dice created array and prints the result.

# CLASS
class Dice
  attr_reader :number_of_sides, :times_rolled, :total_rolls
  attr_accessor :color

# CLASS METHODS
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
    number_of_times.times do
      dice_roll = rand(@number_of_sides) + 1
      total_rolls << dice_roll
      rolls << dice_roll
      @times_rolled += 1
    end
    rolls
  end

  def about
     "A #{@color} #{@number_of_sides} sided die that rolled #{@times_rolled} times: #{@total_rolls}."
  end

end

# DATA STRUCTURE
dice_created = []

# NON CLASS METHODS
def dice_maker(input)
  color = input.split('').delete_if {|letter| letter.include?"0" or letter.include?"1"or letter.include?"2" or letter.include?"3" or letter.include?"4" or letter.include?"5" or letter.include?"6" or letter.include?"7" or letter.include?"8" or letter.include?"9"}.join.strip
  sides = input.delete(color).strip
  dice = Dice.new(sides.to_i, color)
  puts "You made a #{color} die with #{sides} sides."
  dice
end

def roll_all_dice(dice)
  rolls = []
  dice.each do |die|
    rolls << die.roll_the_dice
  end
  rolls
end

# USER INTERFACE
puts "DICE MAKER"
puts "Dice usually have 6 sides but not always."
puts "Please enter color and number of sides." 
input = gets.chomp
dice_created << dice_maker(input)
puts "how many times would you like to roll it?"
times = gets.chomp.to_i
puts "You rolled:" 
dice_created.each do | x |
  p x.roll_multiple_times(times)
end
loop do
  puts "Roll all the dice you made, make another or be done?"
  answer = gets.chomp
  break if answer.upcase.downcase == "done"
  if answer.upcase.downcase.include? "roll"
    puts "you rolled #{roll_all_dice(dice_created)}."
  else puts "Please enter color and number of sides."
    input = gets.chomp
    dice_created << dice_maker(input)
  end
end
puts "You made:"
dice_created.each do | x |
  puts x.about
end





