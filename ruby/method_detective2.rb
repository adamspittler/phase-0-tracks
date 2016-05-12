# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
 #=> “InVeStIgAtIoN”

"zom".insert(1,"o")
# => “zoom”

p "enhance".rjust(10).ljust(15)
#=> “    enhance    ”

p "Stop! You’re under arrest!".upcase
# => “STOP! YOU’RE UNDER ARREST!”

p "the usual".insert(9," suspects")
#=> “the usual suspects”

p " suspects".insert(0, "the usual")
#=> “the usual suspects”

p "The case of the disappearing last letter".chop
# => “The case of the disappearing last lette”

p "The mystery of the missing first letter".delete("T")
# => “he mystery of the missing first letter”

p "Elementary,    my   dear        Watson!".squeeze
# => “Elementary, my dear Watson!”

p "z".ord
# => 122 
#"The Decimal diget value of the lowercase Z in the ASCII table is 122.

p "How many times does the letter 'a' appear in this string?".count
#=> 4