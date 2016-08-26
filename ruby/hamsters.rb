#Partner was Arra Dacquel 


puts "What is the hamster's name?"

hamster_name = gets.chomp.capitalize

puts "What is the volume level of the hamster from 1-10?"

hamster_volume = gets.chomp.to_i

puts "What is the color of the hamster?"

hamster_color = gets.chomp

puts "Is the hamster a good candidate for adoption?  Yes or No?"

hamster_adoption = gets.chomp.upcase

puts "About how old is your hamster?"

hamster_age = gets.chomp

puts " Summary about #{hamster_name}. The hamster is #{hamster_age} years old.  The fur color is #{hamster_color}.  It has a volume level of #{hamster_volume}."

if hamster_adoption == "YES"
		puts "Is a good candidate for adoption."
	elsif hamster_adoption == "NO"
		puts "Is not a good candidate for adoption."
	else
		puts "sorry, I don't Understand."
	end

	