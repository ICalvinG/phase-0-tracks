#Ask for spy's name
puts "What is your first name and last name?"
#Store spy's name into variable
name = gets.chomp
#Swap the first and last name
def secret(name)
	name.split.reverse.join(' ')
	#Change all the vowels to the next vowel
	name.gsub!(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
end
#Change all of the consonants into the next consonant

p secret(name)