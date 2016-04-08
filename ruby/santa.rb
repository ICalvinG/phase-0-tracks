class Santa
	attr_accessor :gender, :ethnicity
	attr_reader :age
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
	    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
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

claus = Santa.new("male", "asian")
claus.speak
claus.eat_milk_and_cookies("chocolate chip")
claus.celebrate_birthday
claus.get_mad_at("Vixen")
puts "Santa is a #{claus.gender} and he is also #{claus.ethnicity}!"

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "monster", "mutant", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "lizard", "bird", "plane"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  p santas
end