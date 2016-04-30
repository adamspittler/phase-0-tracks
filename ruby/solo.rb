# Design Class: Mosquito

	# Attributs are:
		# Name (these mosquitos are anthromorphic)
		# Age in days.
		# "Has sucked your blood" boolian value. 

	# Methods are:
		# initialize: creats between 1 and 10 instances of Mosquito
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
	end

	def about
		puts "a #{@age} day old mosquito named #{@name} is buzzing around your room."
	end

	def sleep_the_night
		@age += 1
		body_part = ["head", "neck", "chest", "left arm", "right arm", "stomach", "back", "left leg", "right leg", "ear", "nose", "forehead", "left foot", "right leg"]
		random_number = rand(1..10)
		if random_number > 5 
			puts "#{@name} has bit you and now you have a welt on your #{body_part.sample}"
			@has_sucked_blood = true
			else puts "#{@name} didn't bite you tonight"
		end
	end


end

#driver code

mosquitos = []
mosquito_name = ["Buzzy", "Sucky", "Stabby", "Zeke", "blood Sucka", "Mr. Mosquito", "Mary Laria",]
3.times do |making_mosquitos|

 	mosquitos << Mosquito.new(mosquito_name.sample, rand(0..5))
 	end

mosquitos.each do |mosquito|
  mosquito.about
 end
  

mosquitos.each do |mosquito|
	mosquito.sleep_the_night
  
end