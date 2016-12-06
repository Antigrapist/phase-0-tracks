# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows us to require a file relative to the current
#   file. 

require_relative 'state_data'

class VirusPredictor

    # Called when making a new instance and taking paramaters paramaters
    # and setting them to instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

    # Calls two other methods of the class   
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

    #   Calculates predicted deaths based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      percent_lost = 0.4
    elsif @population_density >= 150
      percent_lost = 0.3
    elsif @population_density >= 100
      percent_lost = 0.2
    elsif @population_density >= 50
      percent_lost = 0.1
    else
      percent_lost = 0.05
    end
    
    number_of_deaths = (@population * percent_lost).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


    # Calculates speed of spread based on calculation density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |name, data_hash|
    state = VirusPredictor.new(name, data_hash[:population_density], data_hash[:population])
    state.virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # One uses a string as the key, the other a symbol. 
# What does require_relative do? How is it different from require?
  # it loads code from a file path that is relative to the originating file. Require only works if you give it the full path.
# What are some ways to iterate through a hash?
  # .map and .each are two common ways
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # it was passing data through arguments when the data was stored in class variables that were accessible to the other methods.
# What concept did you most solidify in this challenge?
  # if I'm frequently repeating myself, there is probably a better way to do things.
