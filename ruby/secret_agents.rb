#For Each String:
#If String has the character Z, then return A.
#Otherwise string characters converted to their ORD integer, then adds 1, and finally converts back to character.
def shiftForward(str)
 if str == "z"
   return "a"
 else
   return (str.ord+1).chr
 end
end
#Encrypt Method
#Defined Encrypt method with str and gave str an arguement with an empty string.
#Gave index the value of 0.
#While index is less than the length of the string, convert every letter in string to the next character.
#Gave index the increment value of + 1.
def encrypt(str="")  
	index = 0  
 
 while index < str.length
   str[index] = shiftForward(str[index])
   index += 1
 end  
 puts str
 return str
end
#Shift Method:
#For each string:
#If string is equal to "a" then returns a value of "z".
#Otherwise each character in the is converted to its ORD integer, then 1 is removed, and finally converted back.
 def shift(str)
 if str == "a"
   return "z"
 else
   return (str.ord-1).chr
 end
end
#Decrypt Method:
#Defined Decrypt method with str and str an argument with an empty string.
#Gave index a value of 0.
#While index is less than the length of the string, convert every letter backwards with shift method.
#Gave index the increment value of + 1.
def decrypt(str="")  
	index = 0  
 
 while index < str.length
   str[index] = shift(str[index])
   index += 1
 end
 puts str
 return str
end  

#RELEASE 3encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
#RELEASE 4: First we use the Encrypt Method and then follow that with the Decrypt Method.

decrypt(encrypt("The duck flies at midnight"))

#RELEASE 5
#Ask secret agent if they would like to decrypt ot encrypt a password
puts "Would you like to decrypt or encrypt a password?"
cryption = gets.chomp.capitalize
#Ask secret agent for password
puts "What is your password?"
password = gets.chomp
#Add if secret agent chooses encrypt
if cryption == "Encrypt"
	password = encrypt(password)
#Add if secret agent chooses decrypt
elsif cryption == "Decrypt"
	password = decrypt(password)
else
	puts "Have a nice day 007!"
end
#Add exit message
puts "Thank you 007!"