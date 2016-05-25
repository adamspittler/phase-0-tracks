# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# Access' data from adjacent file.

class VirusPredictor

  # makes a new instance of viruspredictior
  # and takes three arguments, which are its attributes
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls predicted deaths and speed of spread methods and passes the 
  # and passes global instance variable attributes
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # calculates number of deaths based on population density
  # and prints the string each states number of deaths
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # determines rate of spread based on population density
  # prints string of speed of spread in months
  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
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

STATE_DATA.each do | state_name, state_information |
  state = VirusPredictor.new(state_name, state_information[:population_density], state_information[:population])
  state.virus_effects
 end

# outfit = {
#   'shoes' => {size:12, color: 'blue'},
#   'pants' => {size: 32, length: 20, color: 'blue'}
# }


# p outfit['shoes']
# p outfit['shoes'][:size]


 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# 
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# 
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# 
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section