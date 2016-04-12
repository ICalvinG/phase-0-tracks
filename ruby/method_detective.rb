# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

<<<<<<< HEAD
swapcase = "iNvEsTiGaTiOn".swapcase
puts swapcase
# => “InVeStIgAtIoN”

insert = "zom".insert(2, "o")
puts insert
# => “zoom”

puts "enhance".center(20)
#=> “    enhance    ”

puts "Stop! You’re under arrest!".upcase
# => “STOP! YOU’RE UNDER ARREST!”

puts "the usual".insert(-1, " suspects")
#=> “the usual suspects”

puts "suspects".insert(0, "the usual ")
#=> “the usual suspects”

puts "The case of the disappearing last letter".chop
# => “The case of the disappearing last lette”

puts "The mystery of the missing first letter".slice!(1..38)
# => “he mystery of the missing first letter”

puts "Elementary,    my   dear      Watson!".squeeze
# => “Elementary, my dear Watson!”

puts "z".bytes
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

puts "How many times does the letter ‘a’ appear in this string?".count("a")
#=> 4
=======
# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

# "zom".<???>
# => “zoom”

# "enhance".<???>
# => "    enhance    "

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4
>>>>>>> 5aa68c0652e70fe28c68f5efbaf0a1a869c73beb
