puts "how many employees are going to take this survey?"
number_of_surveys_needed = gets.chomp.to_i
until number_of_surveys_needed.between?(1,30)
	puts "Please answer with a number between 1 and 30."
	number_of_surveys_needed = gets.chomp.to_i
end
until number_of_surveys_needed == 0
	puts "What is your name?"
	name = gets.chomp
	if name == "dra cula"
		elsif name == "tu fang"
			vampire_sounding_name = true
		else 
			vampire_sounding_name = false
	end
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	birth_year = gets.chomp.to_i
	if birth_year + age == 2015 or birth_year + age == 2016 
		knows_age = true 
		else knows_age = false
	end
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	wants_garlic = gets.chomp
	until wants_garlic == "yes" or wants_garlic == "no"
		puts "Please answer yes or no."
		wants_garlic = gets.chomp 
	end
	if wants_garlic == "yes"
			wants_garlic = true
		else
			wants_garlic = false
	end
	puts "Would you like to enroll in the company’s health insurance?"
	wants_insurance = gets.chomp
	until wants_insurance == "yes" or wants_insurance == "no"
		puts "Please answer yes or no."
		wants_insurance = gets.chomp 
	end
	if wants_insurance == "yes"
			wants_insurance = true
		else
			wants_insurance = false
	end
	puts "please list any allergies, type done when you are finished"
	puts "allergy #1:"
	number_of_allergies = 2
	allergy_result = gets.chomp
	until allergy_result == "done" or allergy_result == "sunshine"
		puts "allergy # #{number_of_allergies}:"
		allergy_result = gets.chomp
		number_of_allergies = number_of_allergies + 1
	end
	if allergy_result == "sunshine" 
			puts "Probably a vampire."
		else
			puts "Survey results for #{name}:"
		if knows_age && wants_garlic && wants_insurance && !vampire_sounding_name
				puts "Probably not a vampire"
			elsif !knows_age && !vampire_sounding_name && ( !wants_garlic || !wants_insurance )
				puts "Probably a vampire"
			elsif !knows_age && !wants_garlic && !wants_insurance && !vampire_sounding_name
				puts "Almost certainly a vampire"
			elsif vampire_sounding_name
				puts "Definitely a vampire"
			else puts "results inconclusive"
		end
	end
		number_of_surveys_needed = number_of_surveys_needed - 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 