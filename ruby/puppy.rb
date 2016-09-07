#Species---------------------
#Golden Retriever Puppy

#Characteristics-------------
#Fuzzy
#Energetic
#Soft
#Friendly: Yes
#Longhair: Yes
#Legs: 4
#Gender: Varies

#Behavior--------------------
#Running
#Wagging their tail
#Having fun!
#Barking!




class Puppy
	def speak(n)
		n.times do |n|
			puts "woof!"
		end
	end

	def rollover
		puts "rollover"
	end

	def dogyears(n)
		dogy = ((n - 2) * 4) + (10.5 * 2) #formula of dog years is that the firt two years of a dog life 10.5 years, every other year after that is 4
		dogy 
	end

	def fetch(item)
		puts "#{item} was fetched."
	end

	def initialize
		puts "Initializing new puppy instance ..."
	end

end

duchess = Puppy.new

duchess.speak(5)

duchess.rollover

p duchess.dogyears(8)

duchess.fetch("stick")


robotstorage = []

class Robot
		def initialize
		puts "Initializing new Robot instance ..."
	end

		def destroy
			puts "destroy all humans!"
		end
end

indexer = 0
while robotstorage.length < 50

	robotstorage << Robot.new
end

robotstorage.each do |a|
	a.destroy
end


