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

	attr_reader :something
	attr_accessor :firstphrase
	attr_accessor :secondphrase
	attr_accessor :arr
	attr_accessor :array2

	def initialize(firstphrase)
		@firstphrase = firstphrase
		@arr = @firstphrase.split('')
@array2 = (1..@firstphrase.length).to_a
@array2.map! do |a|
			"_"
		end
	end

	def guess(secondphrase)
		@secondphrase = secondphrase
	if @secondphrase == @firstphrase
		puts "you guessed it!"
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

end









puts "what is the word to be guessed?"

require 'io/console'

pw = STDIN.noecho(&:gets).chomp.upcase #hides the text of what is being typed

phrase1phase1 = Game.new(pw)

puts phrase1phase1.firstphrase + "!"

x = 0

arrayofusedletters = []


while x < phrase1phase1.firstphrase.length

	puts "Can you guess the letters(If you guess the same letter twice it won't be counted against you)? #{phrase1phase1.firstphrase.length - x} trys available."

	lettergues = gets.chomp.upcase

	phrase1phase1.singleletterguess(lettergues)

	# p @randomletterstring


	if arrayofusedletters.include?(lettergues)
		x = x - 1
	end

	arrayofusedletters << lettergues

	x += 1

	puts "Are you ready for you for your word guess? If so write yes(Only write yes if you are sure you don't need letters). If you write anything else you will guess again."



	finalguess = gets.chomp.upcase

	if finalguess == "YES"

	puts "what is the word?"

	phrase2whattodo = gets.chomp.upcase

	phrase1phase1.guess(phrase2whattodo)

	x += 1
else 
	puts "ok try guessing the letter again"
end
	if phrase1phase1.firstphrase == phrase1phase1.secondphrase
		x = phrase1phase1.firstphrase.length
	end
end

puts "Thanks for playing."
