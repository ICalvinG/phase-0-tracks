class Santa
	attr_accessor :gender, :ethnicity, :age
	attr_reader :reindeer_ranking
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance..."
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	def celebrate_birthday
		@age += 1
	end
	def get_mad_at(reindeer)
		bad_reindeer = @reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(bad_reindeer)
	end
	def gender
		@gender
	end
	def ethnicity
		@ethnicity
	end
end

# claus = Santa.new("male", "asian")
# claus.speak
# claus.eat_milk_and_cookies("chocolate chip")
# claus.celebrate_birthday
# claus.get_mad_at("Vixen")
# puts "Santa is a #{claus.gender} and he is also #{claus.ethnicity}!"

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "monster", "mutant", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "lizard", "bird", "plane"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
#   p santas
# end
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "monster", "mutant", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "lizard", "bird", "plane"]

puts "Would you like to create a new Santa? (Y/N)"
answer = ""
santas = []

until answer == "N"
	answer = gets.chomp.upcase
	if answer == "N"
		break
	elsif answer == "Y"
		claus = Santa.new(example_genders.sample, example_ethnicities.sample)
		claus.age = rand(0..140)
		puts "This Santa is a #{claus.gender} of #{claus.ethnicity} background and is #{claus.age} year(s) old."
		santas << "#{claus.ethnicity}, #{claus.gender}, #{claus.age}"
	else
		puts "There was a mistake please try again."
	end
	puts "Would you like to create another Santa? (Y/N)"
end