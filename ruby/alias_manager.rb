# A method that takes a string breaks it down to to the individual characters and iterates through them replacing only the consonants with the next alphabetical consonant. 

def consonant_replacer (xx)
	xx = xx.chars
	xx.map! do |letter|
		consonant_char = ("bcdfghjklmnpqrstvwxyz".chars)
		if consonant_char.include? letter
			consonant_index = ("bcdfghjklmnpqrstvwxyzb".chars)
			zz = consonant_index.index(letter) + 1
			letter = consonant_index[zz]
			else letter = letter
		end
	end
	xx.join	
end

# A method that does the same thing as the consonant replacer but with vowels.

def vowel_replacer (xx)
	xx = xx.chars
	xx.map! do |letter|
		vowel_char = ("aeiou".chars)
		if vowel_char.include? letter
			vowel_index = ("aeioua".chars)
			zz = vowel_index.index(letter) + 1
			letter = vowel_index[zz]
			else letter = letter
		end
	end
	xx.join	
end

# A hash called structure. 
# The user input as the key 
# The new name with is created when the user input is split into separate strings, reversed and then run through the two letter replacing methods is the value.

structure = {}

# The user enters their names to be coded as may times as they want until they decide to quit.
# Each time the user enters a name the get the coded version back.

puts "Enter name to encode"
i = 1
xx = gets.chomp
if xx == "quit"
	yy = nil
	else
	yy = xx
end

until xx == "quit"
	xx = xx.split(' ').reverse!.join(' ') 
	puts ""
	puts "Your code name is:" 
	zz = consonant_replacer (vowel_replacer (xx))
	puts zz
	puts ""
	puts "Enter another name to encode or type quit."
	structure.merge! yy.to_sym =>zz
	i = i + 1
	xx = gets.chomp
	yy = xx
end

# After the user quits, the program iterates through the hash and tells the user the real names and code names.

structure.each do |real_name, new_name |
	puts "#{new_name} is actually #{real_name}."
end