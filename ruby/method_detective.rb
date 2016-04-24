# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
 #=> “InVeStIgAtIoN”

p "zom".insert(1,"o")
# => “zoom”

p "enhance".rjust(11).ljust(15)
#=> “    enhance    ”

p "Stop! You’re under arrest!".upcase
# => “STOP! YOU’RE UNDER ARREST!”

p "the usual".insert(9, " suspects")
#=> “the usual suspects”

p " suspects".insert(0, "the usual")
#=> “the usual suspects”

p "The case of the disappearing last letter".chomp[0..-2]
# => “The case of the disappearing last lette”

p "The mystery of the missing first letter".chomp[1..-1]
# => “he mystery of the missing first letter”

p "Elementary,    my   dear        Watson!".squeeze
# => “Elementary, my dear Watson!”

p "z".ord
# => 122 
puts "In the ASCII table lower case z has a decimal diget value of 122. z.ord will return that value"

p "How many times does the letter 'a' appear in this string?".count("a")
#=> 4