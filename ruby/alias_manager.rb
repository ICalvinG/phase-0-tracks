#Ask for spy's name
puts "What is your first name and last name?"
#Store spy's name into variable
name = gets.chomp
#Swap the first and last name
def swap(name)
	name.split.reverse.join(' ')
end
#Change all the vowels to the next vowel 
#Change all of the consonants into the next consonant

p swap(name)