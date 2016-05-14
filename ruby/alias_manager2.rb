# Method: takes a string(user input). 
# Down cases the string.
# splits the string into individual single character strings and adds them to an array.
# #returns array
def splitter(input)
 array = input.downcase.split('')
end
 
# Method: takes array of strings.
# contains an array of vowels.
# Iterates through the array using map! 
# If character matches a vowel:
# Contains a second array of vowels that includes a second "a" at the end"
# Checks to see what the index is of the matching vowel in the array.
# Replaces vowel with next vowel by index.
# Returns array
def vowel_checker(array_of_char)
  array_of_char.map! do | char |
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include? char
      vowel_index = ["a", "e", "i", "o", "u", "a",]
      i = vowel_index.index(char) + 1
      char = vowel_index[i] 
    else char = char
    end
  end
  array_of_char
end

# Method: same exact thing as vowel checker but with consonants.
def consonant_checker(array_of_char)
  array_of_char.map! do | char |
    consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
    if consonants.include? char
      consonant_index = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 'b']
      i = consonant_index.index(char) + 1
      char = consonant_index[i] 
    else char = char
    end
  end
  array_of_char
end

p consonant_checker(vowel_checker(splitter("adam spittler")))
# Method: takes array.
# turns the array into a single string
# splits the string into separate 'word' strings.
# Reverses order the word strings.
# Capitalizes words.
# Combines words to a string.
# Returns string

