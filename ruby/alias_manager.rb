#Swap the first and last name
#Change all the vowels to the next vowel
#Change all of the consonants into the next consonant
def secret(name)
	name.split.reverse.join(' ').tr('abcdefghijklmnopqrstuvwxyz', 'ecdfighjoklnpuqrstvawxyzb')
end
#Create hash for storage of fake names
secret_identities = {}
#Ask for spy's name
puts "What is your first name and last name? Type Quit to end."
#Store spy's name into variable and create loop
loop do
	name = gets.chomp
	if name.capitalize == "Quit"
		puts "Good Luck!"
		break
	else
		p secret(name)
	end
end

secret_identities[name] = secret(name)
p secret_identities