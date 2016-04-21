#Program askes a series of questions about the client and adds the info to the hash.

client = {}
puts "Enter client's name?"
name = gets.chomp
client[:name] = name
puts "Enter client's age?"
age = gets.chomp.to_i
client[:age] = age
puts "Enter size of client's family"
fam = gets.chomp.to_i
client[:family_size] = fam 
puts "Enter client's decor theme"
theme = gets.chomp
client[:decor_theme] = theme 
puts "Enter client's current city"
city = gets.chomp
client[:current_city] = city 
puts "Is client a paranoid survivalist?"
survivalist = gets.chomp
until survivalist == "yes" or survivalist == "no"
	puts "Please answer yes or no."
	survivalist = gets.chomp 
end
if survivalist == "yes" 
	paranoid = true
	else 
	paranoid = false 	
end	
client[:paranoid] = paranoid 
puts "Does client require a bomb shelter?"
shelter = gets.chomp
until shelter == "yes" or shelter == "no"
	puts "Please answer yes or no."
	shelter = gets.chomp 
end
if shelter == "yes" 
	needs_shelter = true
	else needs_shelter = false 
end	
client[:needs_shelter] = needs_shelter

#program lists the values supplied.

puts ""
puts "To review:"
puts ""
puts "Name is #{client[:name]}."
puts "Age is #{client[:age]}."
puts "Family size is #{client[:family_size]}."
puts "Prefered design theme is #{client[:decor_theme]}."
puts "Current city is #{client[:current_city]}"
if paranoid == true
	puts "Client is a survivalist."
	else puts "Client is not a survivalist."
end
if needs_shelter ==true
	puts "Client wants a bomb shelter."
	else puts "Client does not require a bomb shelter."
end

#program askes user if they would like to revise a field.

puts ""
puts "If you would like to revise one of the following fields enter it's name, otherwise type done."
puts ""
puts "Reviewable fields: name, age, family_size, decor_theme, current_city, paranoid, needs_shelter" 
new_key = gets.chomp.to_sym
until new_key == :name or new_key == :age or new_key == :family_size or new_key == :decor_theme or new_key == :current_city or new_key == :paranoid or new_key == :needs_shelter or new_key == :done
	puts "please enter the field you would like to change or put done"
	new_key = gets.chomp.to_sym
end
if  new_key == :name or new_key == :age or new_key == :family_size or new_key == :decor_theme or new_key == :current_city 
	puts "What would you like the new value for #{new_key} to be?"
	new_value = gets.chomp	
	elsif new_key == :paranoid
		puts "Is client a paranoid survivalist?"
		paranoid = gets.chomp
		until paranoid == "yes" or paranoid == "no"
			puts "Please answer yes or no."
			paranoid = gets.chomp 
		end
		if paranoid == "yes" 
			new_value = true
			else 
			new_value = false
		end 	
	
	elsif new_key == :needs_shelter
		puts "Does client need a bomb shelter?"
		needs_shelter = gets.chomp
		until needs_shelter == "yes" or needs_shelter == "no"
			puts "Please answer yes or no."
			needs_shelter = gets.chomp 
		end
		if needs_shelter == "yes" 
			new_value = true
			else 
			new_value = false
		end 	
	elsif new_key == :done
	puts "Good, we are done here."
	else
	puts "Good, we are done here."
end	

client[new_key] = new_value

#program outputs the revised data

puts ""
puts "To review:"
puts ""
puts "Name is #{client[:name]}."
puts "Age is #{client[:age]}."
puts "Family size is #{client[:family_size]}."
puts "Prefered design theme is #{client[:decor_theme]}."
puts "Current city is #{client[:current_city]}"
if client[:paranoid] == true
	puts "Client is a survivalist."
	else puts "Client is not a survivalist."
end
if client[:needs_shelter] == true
	puts "Client wants a bomb shelter."
	else puts "Client does not require a bomb shelter."
end

#the program spits out the hash at the end for our records

puts ""
puts "here's the hash."
puts""
p client

