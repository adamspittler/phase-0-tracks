# Design Class: Mosquito

	# Attributs are:
		# Name (these mosquitos are anthromorphic)
		# Age in days.
		# "Has sucked your blood" boolian value. determines if the mosquito is full of blood.
		# "Has been killed" boolean value. determies if the mosquito is alive or dead.

	# Methods are:
		# Initialize: creates between 2 and 10 instances of Mosquito.
		# Get info: allows the user to give names and ages to their mosquitos.
		# About: gives which mosquitos are still flying around.
		# Swat: percentage chance of success. if sucessfull kills (deletes) Mosquito instance, if mosquito has sucked your blood, it leaves a red spot on your wall.
		# Sleep the night: ages each mosquito instance by one day. each Mosquito instance has percentage chance of sucking your blood.
		# Stats: Gives a full update on what became of each mosquito.

	# User interface:
		# Prompt the user to make a number of mosquitos, and then give them names and ages.
		# Ask user if they want to open the window.
		# If they do it allows the mosquitos in.
		# Tell the user how many mosquitos are flying around and their names.
		# Asks the user if they want to try to kill the mosquitos before bed, if they do runs swat method.
		# Tell the user how many mosquitos they killed.
		# Runs sleep the night method, allowing the mosquitos to try to bite.
		# Gives the user another chance to kill the mosquitos.
		# Reports on the current status of all mosquitos.


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

	def get_info
		puts "Whats this mosquito's name?"
		@name = gets.chomp
		puts "How many days old is this mosquito?"
		days_old = gets.chomp.to_i
		until days_old.class == Fixnum
			puts "please enter a number"
			days_old = gets.chomp.to_i
		end
		@age = days_old
	end

	def about
		if @has_been_killed == false
		puts "a #{@age} day old mosquito named #{@name} is buzzing around your room."
		end
		
	end

	def swat
		random_number = rand(1..10)
		if random_number > 4 && @has_sucked_blood == true
			puts "You killed #{@name}, and now you have a gross blood stain on your wall" 
			@has_been_killed = true
			elsif random_number > 4 && @has_sucked_blood == false
			puts "Good for you, you killed #{@name} before it could bite you"
			@has_been_killed = true
			else puts "Too slow!! you missed #{@name}"
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
			#puts "#{@name} didn't bite you because it's dead"
			else	
			puts "#{@name} didn't bite you tonight, but continues to buzz around."
		end
		
	end

	def stats
		if @has_been_killed == true && @has_sucked_blood == false
			puts "#{@name}, #{@age}days old is now stuck to your wall, and never got the pleasure of biting you."
			elsif @has_been_killed == true && @has_sucked_blood == true
				puts "#{@name}, #{@age}days old is now a blood stain on your wall"
			elsif @has_been_killed == false && @has_sucked_blood == true
				puts "#{@name}, #{@age}days old is a happy and full mosquito"
			else puts "#{@name}, #{@age}days old never bit you but avoided smashing"
		end
		
	end


end

#driver code

mosquitos = []
mosquito_name = ["Buzzy", "Sucky", "Stabby", "Zeke", "Blood Sucka", "Mr. Bite You", "Mary Laria", "Bill the Butcher", "Sting", "Little Evil", "Tu Fang", "Succubus", "Buzz Aldrin", "Christopher Columbuzz", "Juicy Lucy", "Typhoid Mary", "Blood Bourne", "Smudge Judy"]

puts "How many mosquitos would you like to make?"
mosquito_number = gets.chomp.to_i
until mosquito_number.class == Fixnum
	puts "please enter a number"
	mosquito_number = gets.chomp.to_i
end
mosquito_number.times do |making_mosquitos|

 	mosquitos << Mosquito.new("N/A", "N/A")
end

puts "please enter a name and an age for each mosquito."

mosquitos.each do |mosquito|
	mosquito.get_info
end

puts ""

puts "would you like to leave the window open?"
window_open = gets.chomp
until window_open == "yes" or window_open == "no"
	puts "please answer yes or no."
	window_open = gets.chomp
end
if window_open == "yes"
	rand(2..10).times do |making_mosquitos|
	
	 	mosquitos << Mosquito.new(mosquito_name.sample, rand(0..5))
	 	end
	else
	puts "Probably a good idea to leave it closed."
end

puts ""

puts "would you like to know how many are in here now?"
how_many = gets.chomp
until how_many == "yes" or how_many == "no"
	puts "please answer yes or no."
	how_many = gets.chomp
end

puts ""

if how_many == "yes"
	p "there are #{mosquitos.length}"
	else
		puts "I guess it's better not to know."
end

puts ""

puts "would you like to try to kill them?"
kill_try = gets.chomp
until kill_try == "yes" or kill_try == "no"
	puts "please answer yes or no."
	kill_try = gets.chomp
end
if kill_try == "yes"
	mosquitos.each do |mosquito|
	mosquito.swat
end
	else
		puts "Suit yourself."
end

puts ""

puts "would you like to know how many are left?"
status = gets.chomp
until status == "yes" or status == "no"
	puts "please answer yes or no."
	status = gets.chomp
end
if kill_try == "yes"
	mosquitos.each do |mosquito|
	mosquito.about
end
	else
		puts "Suit yourself."
end


puts ""	
puts "ok time ot go to bed"
puts ""
mosquitos.each do |mosquito|
	mosquito.sleep_the_night
  
end	

puts ""

puts "would you like to try to kill them again?"
kill_try = gets.chomp
until kill_try == "yes" or kill_try == "no"
	puts "please answer yes or no."
	kill_try = gets.chomp
end
if kill_try == "yes"
	mosquitos.each do |mosquito|
	mosquito.swat
end
	else
		puts "Suit yourself."
end

puts ""

puts "would you like to know the status of the mosquitos?"
know_stats = gets.chomp 
until know_stats == "yes" or know_stats == "no"
	puts "please answer yes or no."
	know_stats = gets.chomp
end
if know_stats == "yes"
	mosquitos.each do |mosquito|
	mosquito.stats
end

	else puts "ok"
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