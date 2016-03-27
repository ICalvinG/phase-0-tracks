puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i
year = (2016 - year)
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
garlic = gets.chomp.capitalize
puts "Would you like to enroll in the company's health insurance? (Y/N)"
health = gets.chomp.capitalize

if name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire"
elsif age == year && garlic == "Y" || health == "Y"
	puts "Probably not a vampire"
elsif age != year && garlic == "N" || health == "N"
	puts "Probably a vampire"
elsif age != year && (garlic == "N" && health == "N")
	puts "Almost certainly a vampire."
else
	puts "Results inconclusive"
end