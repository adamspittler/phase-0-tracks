# Design Class: Mosquito

	# Attributs are:
		# Name (these mosquitos are anthromorphic)
		# Age in days.
		# "Has sucked your blood" boolian value. 

	# Methods are:
		# initialize: creates between 1 and 10 instances of Mosquito
		# Swat: percentage chance of success. if sucessfull kills (deletes) Mosquito instance, if mosquito has sucked your blood, it leaves a red spot on your wall.
		# Sleep the night: ages each mosquito instance by one day. each Mosquito instance has percentage chance of sucking your blood.

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
			puts "Good for you, you killed #{@name} the mosquito before it bit you"
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
mosquito_name = ["Buzzy", "Sucky", "Stabby", "Zeke", "blood Sucka", "Mr. Bite You", "Mary Laria",]
3.times do |making_mosquitos|

 	mosquitos << Mosquito.new(mosquito_name.sample, rand(0..5))
 	end

mosquitos.each do |mosquito|
  mosquito.about
end
  

mosquitos.each do |mosquito|
	mosquito.sleep_the_night
  
end

mosquitos.each do |mosquito|
	mosquito.swat

end

mosquitos.each do |mosquito|
  mosquito.about
end

#p mosquitos
end