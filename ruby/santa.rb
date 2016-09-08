class Santa
	# attr_reader :gender
		attr_accessor :ethniciy

	def initialize(gen, ethn)
	

		puts "Initializing new Santa instance ..."
		@gender = gen
		@ethniciy = ethn 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"] #0, 1, 2, 3, 4, 5, 6
		@age = 0
	end

	
	def celebrate_birthday
		@age += 1
		puts "santa is now #{@age}"
	end

	def ager
		@age
	end


	# def ethniciy
	# 	@ethniciy
	# end

	#method would take reindeer name and store it into a variable. Then would do delete at 
	def get_mad_at(reindeer_name)
	storereindeer_name = reindeer_name
	@reindeer_ranking.delete(reindeer_name)
	@reindeer_ranking[@reindeer_ranking.length] = storereindeer_name
	@reindeer_ranking 
	end

	def ethnicitychange(input)
		@ethniciy = input
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end 

	def gender=(new_gender)
		@gender = new_gender
	end

end

#create an empty array
	santas = []
	genderarr = ["male", "female", "fluid", "female", "male", "Not Applicable"]
	etharr = ["asian", "caucasian", "spanish", "african american", "middle eastern", "robot"]
	indexer = 0

	while indexer < genderarr.length
	santas << Santa.new(genderarr[indexer], etharr[indexer])
	puts santas[indexer].ethniciy
	puts santas[indexer].gender
	indexer += 1
	end

	
	santas[0].ethniciy = "ASIAN"
	p santas[0].ager 
	santas[0].celebrate_birthday
	p santas[0].ager
	p santas[0].get_mad_at("Dancer")
	santas[0].gender = "MANLY"
	p santas[0].gender


