puts "How many employees will be proccessed?"

employees = gets.chomp.to_i

reiterate = 0

until reiterate == employees 


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

if name == "Drake Cula" || name == "Tu Fang"
	puts "defintely a vampire"
	reiterate += 1
		if ==
elsif(agevsyob == false && bread == "no") || hi == "no"  
	puts "Probably a vampire"
	reiterate +=1
elsif agevsyob == true && bread == "yes"
	puts "Probably not a vampire"
	reiterate += 1
else
	puts "Results inconclusive"
	reiterate += 1
end

allergy = "something"

until allergy == "done".upcase || allergy == "sunshine".upcase

puts "Do you have an allergy? If no write done."

allergy = gets.chomp.upcase
end

if allergy == "done"
	puts "thank you"
elsif allergy == "sunshine".upcase
	puts "Probably a vampire"
else
	puts "thank you"
end

Puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end
