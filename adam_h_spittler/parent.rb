#Create a parent class.
#Parent class is initiaed with a name and sleep amout in hours.

class Parent
	attr_reader :sleep_amount
	attr_accessor :name
	
	def initialize(name, sleep_amount)
	@name = name
	@sleep_amount = sleep_amount
	@past_requests = {}
	end	

	#Create greet child class method. returns string.
	def greet_child
		"*yaaaawn* I'm up, I'm up. #{@name} is up. What's the matter?"
	end

	#Create method that takes a request.
	#Check the word count of the request against sleep amount.
	#Returns true if sleep amount greater or equal to word count.
	def hear_request(request)
		
		requested_word_count = request.split(' ').length
		if @sleep_amount >= requested_word_count
			@past_requests[:request] = true
			p "Okay, since you said #{request} so nicely."
		else @past_requests[:request] = false
			p "Not today, sweetie."
		end


		

		
	end


p @past_requests


end
 
parent = Parent.new("Debbie", 4)
puts parent.greet_child
parent.hear_request("I want a toy")
parent.hear_request("I want a toy please please please")