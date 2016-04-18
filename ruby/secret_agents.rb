
def encrypt(word)
	x = 0
	while x < word.length
		if word[x] == "z"
			word[x] = "a"
			else
			word[x] = word[x].next
		end
		x = x + 1
	end
	word
end

def encrypt2(word)
	x = 0
	while x < word.length
		if word[x] == "z"
			word[x] = "c"
			elsif word[x] == "y"
			word[x] = "b"
			elsif word[x] == "x"
			word[x] = "a"		
			else
			word[x] = word[x].next.next.next
		end
		x = x + 1
	end
	word.reverse
end

def decrypt(word)
	x = 0
	str = "abcdefghijklmnopqrstuvwxyz"
	while x < word.length
		word[x] = str[str.index(word[x])-1]
		x = x + 1
	end
	word
end


def decrypt2(word)
	x = 0
	str = "abcdefghijklmnopqrstuvwxyz"
	while x < word.length
		word[x] = str[str.index(word[x])-3]
		x = x + 1
	end
	word.reverse
end

puts "would you like to encrypt or decrypt a password"
password = gets.chomp
if password == "encrypt" 
puts "enter now"	
elsif password == "decrypt" 
puts "enter now"
elsif password == "ensecret" 
puts "enter now"
elsif password == "desecret"
puts "enter now"
else puts "go away"
end
word = gets.chomp
if password == "encrypt" 
puts encrypt(word)	
elsif password == "decrypt" 
puts decrypt(word)
elsif password == "ensecret" 
puts encrypt2(word)
elsif password == "desecret"
puts decrypt2(word)
else puts "really go away"
end
