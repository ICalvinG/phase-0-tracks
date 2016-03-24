puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
garlic = gets.chomp.capitalize
puts "Would you like to enroll in the company's health insurance? (Y/N)"
health = gets.chomp.capitalize

if age == (2016 - year) && (garlic == "Y" || health == "Y")
	puts "Probably not a vampire."
elsif age != (2016 - year) && (garlic == "N" || health == "N")
	puts "Probably a vampire."
elsif age != (2016 - year) && (garlic == "N" && health == "N")
	puts "Almost certainly a vampire."
elsif name == ("Drake Cula" || "Tu Fang")
	puts "Definitely a vampire"
else
	puts "Results inconclusive"
end