puts "What's Hamster Name?"
name = gets.chomp
puts "How loud is your hamster (1-10)?"
volume = gets.chomp
puts "What's your hamsters fur color?"
fur = gets.chomp
puts "Is your hamster adoptable? (y/n)"
adopt = gets.chomp
puts "How old is your hamster?"
age = gets.chomp || nil

puts "Hello I'm #{name} , Volume: #{volume}(1-10 scale), My fur is #{fur} color, I am #{age} years old. Adoptable: #{adopt}"