class Santa

<<<<<<< HEAD
	#attr reader and attr accessor shortcuts.
	attr_reader :age, :ethnicity
	attr_accessor :gender	

	def initialize(gender, ethnicity, age)
=======
	def initialize(gender, ethnicity)
>>>>>>> master
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
<<<<<<< HEAD
		@age = age
	end

	#getter methods
	#def age
	#	@age
	#end

	#def ethnicity
	#	@ethnicity
	#end

	# setter methods
	#def gender=(new_gender)
	#	@gender = new_gender
	#end

	# methods
=======
		@age = 0

	end

>>>>>>> master
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}."
	end

	def about
		puts "Gender is #{@gender}"
		puts "Ethnicity is #{@ethnicity}"
<<<<<<< HEAD
		puts "age is #{@age}"
		#puts "Reindeer ranking is #{@reindeer_ranking}"
	end

	#attribute changing methods
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(bad_reindeer)
		@reindeer_ranking.delete(bad_reindeer)
		@reindeer_ranking.insert(8, bad_reindeer)
	end

end

#driver code

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "prefer not to say"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Brazilian", "Klingon", "afro-czech", "caucazoidal", "lizard overlord", "Saudi-Canadian", "white walker", "Titan", "Jawa", "mer-person", "floridian", "ninja trutle", "trogladite", "sasquatch"]
100.times do |making_santas|

  santas << Santa.new(example_genders.sample, example_ethnicities.sample,rand(0..140) )
end

santas.each do |santa|
  santa.about
  santa.speak
end
=======
		#puts "Reindeer ranking is #{@reindeer_ranking}"
	end


	
end
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")


#santa.speak
#
#santa.eat_milk_and_cookies("plain cookie")
#
santa.about
>>>>>>> master
