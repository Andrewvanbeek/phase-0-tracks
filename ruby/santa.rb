class Santa
	attr_reader :gender
		attr_accessor :ethniciy

	def initialize(gen, ethn)
	

		puts "Initializing new Santa instance ..."
		@gender = gen
		@ethniciy = ethn 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	def celebrate_birthday
		@age += 1
		puts "santa is now #{@age}"
	end

	def ager
		@age
	end


	# def gender
	# 	@gender
	# end
	def get_mad_at(reindeer_name)
		
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

	
	santas[0].ethniciy = "SUPA ASIAN"
	p santas[0].ager 
	santas[0].celebrate_birthday
	p santas[0].ager


