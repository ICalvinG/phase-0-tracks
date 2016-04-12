# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  # initializes three arguments ad provides 3 instance variables for each argument
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls predicted_deaths and speed_of_spread with the appropriate args
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # take a population density, populate and state and based on that info
  # print to console the number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    threshold = (@population_density/50).floor

    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 50
      number_of_deaths = (@population*threshold*0.1).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Takes in population density and the state adds speed to based on density 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    threshold = (@population_density/50).floor

    if @population_density >= 200
      speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
def print_effects

  STATE_DATA.each do |state_string, data_hash| 
    state = VirusPredictor.new(
      state_string, 
      STATE_DATA[state_string][:population_density], 
      STATE_DATA[state_string][:population]
    )
    state.virus_effects
  end

end

print_effects

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects




#=======================================================================
# Reflection Section
# The differences between the two different hash syntaxes was that one had a normal
# key and value pair while the other had a hash array of different values. 

#require_relative is used to connect local files while require has a larger scope and 
#is used on a more macro scale. Similar to accessing a module that is already in the system.

#You can iterate through a hash by defining a method that initializes each of your hash keys.

#The thing that stood out to me was that there were arguments there that were not needed. I saw
#that the methods called by virus_effects were using instance variables which do not need arguments.

#The concept that I solidified most with as creating a method that initializes every key in the hash.
