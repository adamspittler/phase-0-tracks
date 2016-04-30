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
		puts "A mosquito named #{name} is buzzing around your room"
		@name = name
		@age = age
		@has_sucked_blood = false
	end

	def about
		puts "a mosquito named #{@name} is buzzing around your room."
	end

	def sleep_the_night
		@age += 1
	end


end

#driver code

mosquitos = []
3.times do |making_mosquitos|

 	mosquitos << Mosquito.new("buzzy", 0)
 	end

mosquitos.each do |mosquito|
  mosquito.about
  
end