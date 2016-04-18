# the encrypt method pushes all the letters in a string up by one.
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
# I added secret encrypt and decrypt methods that are a little more complicated, they are only accessed if the user knows their name.
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
# the decrypt method pulls all the letters in a string back by one.
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
# Driver code
#decrypt(encrypt("swordfish"))
puts "would you like to encrypt or decrypt a encryption_selection"
encryption_selection = gets.chomp
if encryption_selection == "encrypt" 
	puts "enter now (please letters only and no spaces)"	
	elsif encryption_selection == "decrypt" 
	puts "enter now"
	elsif encryption_selection == "ensecret" 
	puts "enter now"
	elsif encryption_selection == "desecret"
	puts "enter now"
	else puts "go away"
end
word = gets.chomp
if encryption_selection == "encrypt" 
	puts encrypt(word)	
	elsif encryption_selection == "decrypt" 
	puts decrypt(word)
	elsif encryption_selection == "ensecret" 
	puts encrypt2(word)
	elsif encryption_selection == "desecret"
	puts decrypt2(word)
	else puts "really go away"
end
