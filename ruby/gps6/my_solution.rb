# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

attr_accessor :state, :population, :population_density

# initialize method is responsible for creating instances and taking the vatiable given 

  def initialize(state_of_origin, population_density, population)
    puts "creating"
    @state = state_of_origin
    @population = population
    @population_density = population_density

  end



# Responsible for printing both of the statements together, since they don't make sense if they're alone.
  

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  
private

# Taking the info from the other file, comparing to the if statement, and doing to correspsonding math. Then prints a statement with the state and the answer to the equation.
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    pdeathshash1 = {0..49 => (@population * 0.05).floor, 50..99 => (@population * 0.1).floor, 100..149 => (@population * 0.2).floor, 150..199 => (@population * 0.3).floor, 200..10000000 => (@population * 0.04).floor}
      pdeathshash1.each do |range, deaths|
      if (range).include?(@population_density.floor)
         print "#{@state} will lose #{deaths} people in this outbreak"
        end
      end


  end

# Same thing as method above, except instead of doing math, it adds the correspinding speed to the speed variable. And then prints the statement.
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
  

#Method should be able to have add greater speed to to pop density numbers that are lower then each other at increments of 50.
#steps 
#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end


#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end
    speedhash1 = {0..49 => 2.5, 50..99 => 2.0, 100..149 => 1.5, 150..199 => 1.0, 200..103589999 => 0.5}
    speedhash1.each do |range, speed|
        if (range).include?(@population_density.floor)
         puts " and will spread across the state in #{speed} months.\n\n"
        end
    end


    # puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
 state_instance_hash = {}
 newvar = ""

 p STATE_DATA
 

 STATE_DATA.each do |state, hashes|
   state_instance_hash[state] = VirusPredictor.new( state, hashes[:population_density], hashes[:population])
  state_instance_hash[state].virus_effects
end

# p ObjectSpace.each_object(VirusPredictor).count 

p state_instance_hash["California"].population_density

  # state_instance_hash.each do |x, y|  #x is the hash key here.  In the state_instance hash x is the key y is the value pair that stores the whole instances.  So to access a particular instance variable of the method i would write the instance which is y here, and then the method or instance varuable that i am trying to call by instance.instancewhatever i am trying to call.
  #     p x
  #     p y

  #    end 

# p newvar

p whole_thing


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects



#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section

=begin
require_relative is the command that is responsible for calling another file to load. Require is the long way to do require_relative
=end

=begin
Here, we have a hash within a hash. State_data is a hash itself, and then each state within that hash is also a hash. We also have a key and a symbol. STATE_DATA is a constant, which never changes. 
=end









