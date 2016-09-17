class Santa
	attr_accessor :gender
	attr_reader :ethnicity, :age

	def initialize(gender, ethnicity)
		puts "initializing Santa Instance"
		p @gender = gender
		p @ethnicity = ethnicity
		@randomage = (0..140).to_a
		p @age = @randomage.sample
		p @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookies)
		puts "That was a good #{cookies}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking[-1] = @reindeer_ranking.delete(reindeer)
		@reindeer_ranking.delete(nil)
		@reindeer_ranking
		end

end


santa1 = Santa.new("Male", "Asian")

santa1.speak

p santa1.get_mad_at("Dasher")

santa1.eat_milk_and_cookies("gingerbread cookie")

p santa1.ethnicity
p santa1.age
santa1.gender = "robot"

p santa1.gender


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

# p santas