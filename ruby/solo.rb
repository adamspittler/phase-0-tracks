# Design Class: Mosquito

	# Attributs are:
		# Name (these mosquitos are anthromorphic)
		# Age in days.
		# "Has sucked your blood" boolian value. determines if the mosquito is full of blood.
		# "Has been killed" boolean value. determies if the mosquito is alive or dead.

	# Methods are:
		# initialize: creates between 2 and 10 instances of Mosquito.
		# About: gives the stat of all the mosquitos.
		# Swat: 60 percentage chance of success. if sucessfull kills (deletes) Mosquito instance, if mosquito has sucked your blood, it leaves a red spot on your wall.
		# Sleep the night: ages each mosquito instance by one day. each Mosquito instance has percentage chance of sucking your blood.

	# User interface:
		# Ask user if they want to open the window.
		# If they do it allows the mosquito s in.
		# Tell the user how many mosquitos are flying around and their names.
		# Asks the user if they want to try to kill the mosquitos before bed, if they do runs swat method, if not runs sleep the night method.
		# gives the user two chances to try to kill the mosquitos before they are too tired and go to bed.
		# After the sleep the night is run gives the user to open the window the next day and repeats the rest of the structure until all the mosquitos are gone.


class Mosquito

	#attr reader and attr accessor shortcuts.
	attr_reader :age, :name, :has_sucked_blood
	attr_accessor :name

	def initialize(name, age)
		puts "BZZZZZZZZZ"
		@name = name
		@age = age
		@has_sucked_blood = false
		@has_been_killed = false
	end

	def about
		if @has_been_killed == false
		puts "a #{@age} day old mosquito named #{@name} is buzzing around your room."
	end

	def swat
		random_number = rand(1..10)
		if random_number > 4 && @has_sucked_blood == true
			puts "You killed #{@name}, and now you have a gross blood stain on your wall" 
			@has_been_killed = true
			elsif random_number > 4 && @has_sucked_blood == false
			puts "Good for you, you killed #{@name} before it bit you"
			@has_been_killed = true
			else puts " Too slow!! you missed #{@name}"
		end
	end

	def sleep_the_night
		@age += 1
		body_part = ["head", "neck", "chest", "left arm", "right arm", "stomach", "back", "left leg", "right leg", "ear", "nose", "forehead", "left foot", "right leg"]
		random_number = rand(1..10)
		if random_number > 5 && @has_been_killed == false
			puts "#{@name} has bit you and now you have a welt on your #{body_part.sample}"
			@has_sucked_blood = true
			elsif  random_number > 5 && @has_been_killed == true
			puts "#{@name} didn't bite you because it's dead"
			else	
			puts "#{@name} didn't bite you tonight, but continues to buzz around."
		end
	end


end

#driver code

mosquitos = []
mosquito_name = ["Buzzy", "Sucky", "Stabby", "Zeke", "Blood Sucka", "Mr. Bite You", "Mary Laria", "Bill the Butcher", "Sting", "Little Evil", "Tu Fang", "Succubus", "Buzz Aldrin", "Christopher Columbuzz", "Juicy Lucy", "Typhoid Mary", "Blood Bourne", "Smudge Judy"]
puts "Do you want to open the window this afternoon?"
window_open = gets.chomp
until window_open == "yes" or window_open == "no"
	puts "Please answer yes or no."
	window_open = gets.chomp
end	
	if window_open == "yes" 
			rand(2..10).times do |making_mosquitos|
			mosquitos << Mosquito.new(mosquito_name.sample, rand(0..5))
			end
			puts "you let some mosquitos in"
 			puts ""
 			mosquitos.each do |mosquito|
				mosquito.about
			end







 		else
 			puts "it's pretty stuffy in here, but suit yorself."
	end
end






#rand(2..10).times do |making_mosquitos|
#
# 	mosquitos << Mosquito.new(mosquito_name.sample, rand(0..5))
# 	end
#
#mosquitos.each do |mosquito|
#  mosquito.about
#end
#  
#
#mosquitos.each do |mosquito|
#	mosquito.sleep_the_night
#  
#end
#
#mosquitos.each do |mosquito|
#	mosquito.swat
#
#end
#
#mosquitos.each do |mosquito|
#  mosquito.about
#end
#
##p mosquitos
#end