#Create a parent class.
#Parent class is initiaed with a name and sleep amout in hours.

class Parent
	attr_reader :sleep_amount
	attr_accessor :name
	
	def initialize(name, sleep_amount)
	@name = name
	@sleep_amount = sleep_amount
	end	

	#Create greet child class method. returns string.
	def greet_child
		"*yaaaawn* I'm up, I'm up. #{@name} is up. What's the matter?"
	end



end
 
parent = Parent.new("Debbie", 4)
puts parent.greet_child