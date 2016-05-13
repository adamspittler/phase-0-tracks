#Create a parent class.
#Parent class is initiaed with a name and sleep amout in hours.

class Parent
	attr_reader :sleep_amount
	attr_accessor :name, :past_requests
	
	def initialize(name, sleep_amount)
	@name = name
	@sleep_amount = sleep_amount
	@past_requests = []
	end	

	#Create greet child class method. returns string.
	def greet_child
		"*yaaaawn* I'm up, I'm up. #{@name} is up. What's the matter?"
	end

	#Create method that takes a request.
	#Check the word count of the request against sleep amount.
	#Returns true if sleep amount greater or equal to word count and prints appropriate string.
	#Creates requests hash
	#Adds request and boolian value to requests hash.
	def hear_request(request)

		requests = {}
		requested_word_count = request.split(' ').length
		if @sleep_amount >= requested_word_count
			requests[request] = true
			p "Okay, since you said #{request} so nicely."
		else requests[request] = false
			p "Not today, sweetie."
		end
		@past_requests<<requests
		
		
	end

	#Creates a history method that iterates through the past history and prints the result.
	def history
		@past_requests.each do |print|
			
		#This is where I ran out of time.
		end
	
	end

	#Make a method that first collects all the words in the past history into an array with an index.
	#Then the method should make a copy of the array but make sure it has the same index.
	#Then delete all the non vowels in the second array by comparing them to an array of only vowels and deleting the ones that don't match.
	#Find the index longest words left using .length.
	#print the matching index numbers from the first array

end
 
parent = Parent.new("Debbie", 4)
puts parent.greet_child
parent.hear_request("I want a toy")
parent.hear_request("I want a toy please please please")
parent.history