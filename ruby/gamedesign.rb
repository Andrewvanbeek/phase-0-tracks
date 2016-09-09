# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

#Program should take input of first user through a class method because if new game should be its own isolated instance of the game class.
#One method should take the first string and store it, while the second method should be able to access that string and see if evaluates to the second string
#input should be the first word, and the second input should be the guesses of that word.  The number times a user can guess the word is tied directly into that the length of the first word.
#if there is a guess


class Game

	attr_reader :something

	def initialize
		@something = 4
	end


end

x = 0
ohyeah = Game.new 

while x < ohyeah.something 



puts "what is the pw?"

require 'io/console'

pw = STDIN.noecho(&:gets).chomp #hides the text of what is being typed

x += 1

end

