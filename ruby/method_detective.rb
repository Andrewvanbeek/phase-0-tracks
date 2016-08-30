# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<swapcase>
# => “InVeStIgAtIoN”


investigation = "iNvEsTiGaTiOn".swapcase

puts investigation
# "zom".insert(1, "o")
# => “zoom”

zoom = "zom".insert(1, "o")

puts zoom

# "enhance".center(4)
# => "    enhance    "

enhance = "enhance".center(4)

puts enhance

# "Stop! You’re under arrest!".<upcase>
# => "STOP! YOU’RE UNDER ARREST!"

arrest = "Stop! You’re under arrest!".upcase

puts arrest


# "the usual".insert (9, " suspects")
#=> "the usual suspects"

suspects1 = "the usual".insert(9, ' suspects')

puts suspects1

# " suspects".insert(0, "the usual")
# => "the usual suspects"
suspects2 = " suspects".insert(0, "the usual")

puts suspects2

# "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

caseof = "The case of the disappearing last letter".chop

# "The mystery of the missing first letter".slice(1...40)
# => "he mystery of the missing first letter"

caseoffirstletter = "The mystery of the missing first letter".slice(1...40)

puts caseoffirstletter

# "Elementary,    my   dear        Watson!".strip
# => "Elementary, my dear Watson!"
elementary = "Elementary,    my   dear        Watson!".strip

puts elementary

# "z".each_byte {|c| print c, ' ' }
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
#is the enumerator of the string "z".

enumerator = "z".each_byte {|c| print c, ' ' }
puts enumerator

# "How many times does the letter 'a' appear in this string?".count "a"

counting = "How many times does the letter 'a' appear in this string?".count "a"
# => 4