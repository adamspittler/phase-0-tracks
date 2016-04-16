puts "how many employees are going to take this survey?"
x = gets.chomp.to_i
until x.between?(1,30)
   puts "Please answer with a number between 1 and 30."
   x = gets.chomp.to_i
end
until x == 0

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
x = x - 1
end
