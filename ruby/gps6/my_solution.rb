# Virus Predictor

# I worked on this challenge [by myself, with: @brianrodriguez ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#
#
# imports the code from the file listed, differs from require because it uses a relative file path
# (relative to the current file).
require_relative 'state_data'

class VirusPredictor

# This method, upon initialization, sets the state of origin to an instance variable, which is available
# throughout the class. It does the same for population_density and population inputs. 
# The inputs will come from the STATE_DATA ruby constant variable(hash).
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calling the subsequent class methods of predict_deaths and speed_of_spread, utilizing 
# class instance variables
 

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private

# predicted deaths calculates the number of deaths, based on thresholds of the population_density
  def predicted_deaths
    # predicted deaths is solely based on population density

    

    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor =  0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end

    number_of_deaths = (@population * factor).floor  

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# calculates how fast the virus will spread, based on population_density thresholds
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


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

=begin
for .each key value pair in STATE_DATA |key, value|
  initialize a new instance of VirusPredictor, where the instance variables come from the hash
  as we loop through it
  call virus_effects on each new instance
=end

# STATE_DATA.each do |state, population_info|
#   VirusPredictor.new(state, population_info[:population_density], population_info[:population] ).virus_effects
# end 

#=======================================================================
# Reflection Section

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

# The two kinds are: 
(1) rocket (=>), used to add string keys (“me” => “Sumaiya”) or symbol keys (:me  => “Sumaiya”)
(2) colon(:) automatically converts keys to symbols (me: “Sumaiya”) 

What does require_relative do? How is it different from require?
# imports the code from the file listed, differs from require because it uses a relative file path
# (relative to the current file). Require needs a complete filepath.

What are some ways to iterate through a hash?

(1) using .each with a block (do...end or {}). You could also do .times.

  
When refactoring virus_effects, what stood out to you about the variables, if anything?
#The variables passed parameters(variables) that they did not need to since those variables were accessible throughout the instance. 
 
What concept did you most solidify in this challenge? 

#The concept I most solidified in the challenge with our guide's support was scoping, esp. instance scope.

  
=end
