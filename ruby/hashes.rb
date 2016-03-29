#Create hash for client information
client = {}
#Enter the name of the client
puts "What is the name of your client?"
name = gets.chomp.to_sym
#Enter the age of the client
puts "How old is the client?"
age = gets.chomp.to_i
#Enter how many children the client has
puts "How many children does the client have?"
children = gets.chomp.to_i
#Enter what kind of decor theme the client wants
puts "What kind of decor theme does the client want?"
decor_theme = gets.chomp.to_sym
#Enter what is the client's budget
puts "What is the client's budget?"
budget = gets.chomp.to_i
client[name] = name
client[age] = age
client[children] = children
client[decor_theme] = decor_theme
client[budget] = budget