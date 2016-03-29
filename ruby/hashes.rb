#Create hash for client information.
client = {}
#Enter the name of the client.
puts "What is the name of your client?"
name = gets.chomp.to_sym
#Enter the age of the client.
puts "How old is #{name}?"
age = gets.chomp.to_i
#Enter how many children the client has.
puts "How many children does #{name} have?"
children = gets.chomp.to_i
#Enter what kind of decor theme the client wants.
puts "What kind of decor theme does #{name} want?"
decor_theme = gets.chomp.to_sym
#Enter what is the client's budget.
puts "What is #{name}'s budget?"
budget = gets.chomp.to_i
#Add all the information into the hash.
client[:name] = name
client[:age] = age
client[:children] = children
client[:decor_theme] = decor_theme
client[:budget] = budget
#Print back the information to the user with choice of updating.
puts "Would you like to review or update #{name}'s information?"
answer = gets.chomp.downcase
if answer == "review"
	puts client[:name]
	puts client[:age]
	puts client[:children]
	puts client[:decor_theme]
	puts client[:budget]
elsif answer == "update"
	puts "What information would you like to update?"
	update = gets.chomp.downcase
	if update == "name"
		puts "What is client's new name?"
		name = gets.chomp.to_sym
		client[:name] = name
	elsif update == "age"
		puts "What is the client's age?"
		age = gets.chomp.to_i
		client[:age] = age
	elsif update == "children"
		puts "How many children does the client have?"
		children = gets.chomp.to_i
		client[:children] = children
	elsif update == "decor theme" || "decor"
		puts "What decor theme would the client like?"
		decor_theme = gets.chomp.to_sym
		client[:decor_theme] = decor_theme
	elsif update == "budget"
		puts "What is the client's new budget?"
		budget = gets.chomp.to_i
		client[:budget] = budget
	end
end