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

attr_reader :secondphrase
attr_accessor :word, :counter

	def initialize(word)
		@word = word.upcase.split("")
		@usedlettersarray = Array.new(@word.length, "_")
		@counter = 0
	end

	def wordguesser(yesorno)
		"YES" == yesorno.upcase
	end


	def printlettersmethod(letter)
		@counter  += 1
		if @usedlettersarray.include?(letter)
						@counter = @counter - 1
					end
			if @word.include?(letter.upcase)
				@word.each_index do |a|
					if @word[a] == letter.upcase
						@usedlettersarray[a] = letter
					end 
				end
			end
		p @usedlettersarray.join 
	end

	def endgame(secondphrase)
		@secondphrase = secondphrase.upcase.split("") 
		if @secondphrase == @word
			@counter = @word.length + 1
		else
			@counter = @word.length + 1
		end
	end
end
	

puts "What is the word to be guessed?"

	require 'io/console'#this is a ruby 

	pw = STDIN.noecho(&:gets).chomp #hides the text of what is being typed

	phrase1phase1 = Game.new(pw)

while phrase1phase1.counter < phrase1phase1.word.length

	puts "What is the letter you want to guess?  You have #{phrase1phase1.word.length - phrase1phase1.counter} try(s)."

		letter = gets.chomp

		phrase1phase1.printlettersmethod(letter)

	puts "Are you ready to guess the word?  Then type yes. If you had 0 trys left and do not guess you will lose."

	word_yes_or_no = gets.chomp

	if phrase1phase1.wordguesser(word_yes_or_no)

	puts "What is the word?"

		secondphrase = gets.chomp.upcase

		phrase1phase1.endgame(secondphrase)
	else

	end
end
	if phrase1phase1.secondphrase == phrase1phase1.word
		puts "Congrats!"
	else
		puts "Sorry you lost"
	end

#Driver coder is the view- the thing the user sees.
#Here it is the questions.
#running thins, printing things, getting thing user
# Make it happens
#

