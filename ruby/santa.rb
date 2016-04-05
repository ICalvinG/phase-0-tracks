class Santa
	@@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@@age = 0
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance..."
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
end

claus = Santa.new("male", "asian")
claus.speak
claus.eat_milk_and_cookies("chocolate chip")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "monster"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Singaporean"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
p santas