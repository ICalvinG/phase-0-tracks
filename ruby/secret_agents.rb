#METHODSdef shiftForward(str)
 if str == "z"
   return "a"
 else
   return (str.ord+1).chr
 end
end
#Encrypt Method with Change Method to account for Z-Adef encrypt(str="")  index = 0  
 
 while index < str.length
   str[index] = shiftForward(str[index])
   index += 1
 end  puts str
 
 return strend#Decrypt Method with Shift Method to account for A-Zdef shift(str)
 if str == "a"
   return "z"
 else
   return (str.ord-1).chr
 end
end

def decrypt(str="")  index = 0  
 
 while index < str.length
   str[index] = shift(str[index])
   index += 1
 end
 puts str
 
 return str
end  #RELEASE 3encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")#RELEASE 4: First we use the Encrypt Method and then follow that with the Decrypt Method.
decrypt(encrypt("The duck flies at midnight"))#RELEASE 5