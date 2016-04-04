#Swap the first and last name
#Change all the vowels to the next vowel
#Change all of the consonants into the next consonant
def secret(name)
	name.split.reverse.join(' ').tr('abcdefghijklmnopqrstuvwxyz', 'ecdfighjoklmnpuqrstvawxyzb')
end
#Create hash for storage of fake names
secret_identities = {}
#Ask for spy's name
puts "What is your first name and last name? Type Quit to end."
#Store spy's name into variable and create loop that ends when user types in quit
#Store encoded name into different variable
#Capitalize both words in encoded name
#Store both name and encoded name into hash
loop do
	name = gets.chomp
	code = secret(name)
	cap_code = code.split.map(&:capitalize).join(" ")
	if name.capitalize == "Quit"
		puts "Good Luck!"
		break
	else
		puts "Your spy name is #{cap_code}!"
	end
	secret_identities[name] = cap_code
end
#Print out all name and encoded names to console
secret_identities.each { |name, cap_code| puts "#{cap_code} is actually #{name}!" }