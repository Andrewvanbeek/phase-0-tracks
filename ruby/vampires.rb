puts "What is your name?"

name = gets.chomp

puts "How old are you?" 

age = gets.chomp.to_i

puts age

puts "What year were you born?"

yob = gets.chomp.to_i

if 2016 - yob == age
	agevsyob = true
else
	agevsyob = false	
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? Yes or No?"

bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance? Yes or No?"

hi = gets.chomp

if agevsyob == true && bread == "yes"
	puts "Probably not a vampire"
elsif name = "Drake Cula"
	puts "def a vampire"
elsif (agevsyob == false && bread == "no") || hi == "no"  
	puts "Probably a vampire"
elsif name = "Drake Cula"
	puts "def a vampire"
else
	puts "results inconclusive"
end
