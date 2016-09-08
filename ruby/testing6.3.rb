
class Santa

	def initialize(gen, ethn)
	

		puts "Initializing new Santa instance ..."
		@gender = gen
		@ethniciy = ethn 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"] #0, 1, 2, 3, 4, 5, 6
		@age = 0
	end

	def gender=(new_gender)
		@gender = new_gender
	end

end

var = Santa.new("male", "chinese")

var.gender = 5

puts var.gender