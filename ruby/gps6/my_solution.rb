# Virus Predictor

# EXPLANATION OF require_relative
#
#


require_relative 'state_data'

class VirusPredictor
#create instances with state_of_origin, population_density, population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# method that calls predicted_deaths & speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Predicts deaths based on population density 
  def predicted_deaths
    # predicted deaths is solely based on population density
   if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density < 200 && @population_density >= 50
      number_of_deaths = (@population * ((@population_density/50).floor*0.1)).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  

#calculates speed of spread based on density 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 50
      speed += 2.5 - ((@population_density/50)*0.5)
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 # state_name = "Alabama"

# state_value = {population_density: 94.65, population: 4822023}

#STATE_DATA[state_name] = {population_density: 94.65, population: 4822023}


#state_value = STATE_DATA[state_name]

STATE_DATA.each{|state_name, state_value|
  state = VirusPredictor.new(state_name, state_value[:population_density], state_value[:population])
  state.virus_effects
}


#example: 
#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

