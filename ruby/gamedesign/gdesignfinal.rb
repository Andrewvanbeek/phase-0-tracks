# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

#Program should take input of first user through a class method because if new game should be its own isolated instance of the game class.
#One method should take the first string and store it, while the second method should be able to access that string and see if evaluates to the second string
#input should be the first word, and the second input should be the guesses of that word.  The number times a user can guess the word is tied directly into that the length of the first word.
#if there is a guess
#should be another method that asks to guess the letters of the firstphrase and printout if the letters are in the word of the phrase.


class Game

	# attr_reader :something
	attr_accessor :firstphrase, :finalguess, :secondphrase, :arr, :array2, :x, :secondword, :lettergues, :finalguess 
	# attr_accessor :secondphrase
	# attr_accessor :arr
	# attr_accessor :array2
	# attr_accessor :x
	# attr_accessor :secondword
	# attr_accessor :lettergues
	# attr_accessor :finalguess

	def initialize(firstphrase)
		@firstphrase = firstphrase
		@arr = @firstphrase.split('')
		@array2 = (1..@firstphrase.length).to_a
			@array2.map! do |a|
				"_"
			end


		@x = 0
		@secondword = ""
		@lettergues = ""
		@finalguess = ""
	end

	def guess(secondphrase)
		puts "What is the word?"
		@secondphrase = secondphrase
		if @secondphrase == @firstphrase
			puts "you guessed it!"
			@x = @firstphrase.length
		else
			puts "Sorry nope! Try again"
		end
		@secondphrase == @firstphrase
	end

	def singleletterguess(input)

		@arr.each do |b|
			if b == input
				@array2[@arr.index(b)] = b
				@arr[@arr.index(b)] = 0

			end
		end

		puts "#{@array2.join}"
		@array2
	end

	def santavar(input)
		@arrayofusedletters = []
		if @arrayofusedletters.include?(input)
			@x = @x - 1
		end
		@arrayofusedletters << input
		@x += 1
	end

	def wordguess
		puts "Can you guess the letters(If you guess the same letter twice it won't be counted against you)? #{@firstphrase.length - @x} trys available."
	end

	def finalstatement


		if @finalguess == "YES"

			puts "What is the word?"


			@secondword = gets.chomp.upcase

			guess(@secondword)
		end
	end
	 

end








puts "what is the word to be guessed?"

require 'io/console'

pw = STDIN.noecho(&:gets).chomp.upcase #hides the text of what is being typed

phrase1phase1 = Game.new(pw)



while phrase1phase1.x < phrase1phase1.firstphrase.length

	phrase1phase1.wordguess

	phrase1phase1.lettergues = gets.chomp.upcase

	phrase1phase1.singleletterguess(phrase1phase1.lettergues)


	phrase1phase1.santavar(phrase1phase1.lettergues)#prints the empty array

	puts "Are you ready to guess? the word?"


	# phrase1phase1.wordguess(phrase1phase1.finalguess)

	phrase1phase1.finalguess = gets.chomp.upcase

		# if phrase1phase1.finalguess == "YES"

		# 	puts "What is the word?"


		# 	phrase1phase1.secondword = gets.chomp.upcase

		# 	phrase1phase1.guess(phrase1phase1.secondword)

		# else 

		# end
		phrase1phase1.finalstatement


end


puts "Thanks for playing."
