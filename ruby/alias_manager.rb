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
puts "Enter name to encode"
xx = gets.chomp
xx = xx.split(' ').reverse!.join(' ') 
puts "Your code name is:" 
puts consonant_replacer (vowel_replacer (xx))