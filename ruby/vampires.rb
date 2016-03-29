puts "How many employees will be processed?"
amount = gets.chomp.to_i

employees = 0
until employees == amount
	employees += 1
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
	puts "Name any allergies you may have one at a time. Type in done when finished."
	loop do
		allergies = gets.chomp.capitalize
		if allergies == "Done"
			break
			puts "Thank You!"
		elsif allergies == "Sunshine"
			puts "Probably a vampire"
			break
		end
	end

if name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire."
elsif age == year && garlic == "Y" || health == "Y"
	puts "Probably not a vampire."
elsif age != year && (garlic == "N" && health == "N") 
	puts "Almost certainly a vampire."
elsif (garlic == "Y" && age != year) || health == "N"
	puts "Probably a vampire."
else
	puts "Results inconclusive."
end
end 
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
