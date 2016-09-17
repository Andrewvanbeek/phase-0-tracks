# MAIN METHODS
# swap names
# go to next vowel
# go to next con

# Swap names
# Input: String of First and Last names
# STEP:
	# store in variable
	# split string into names
	# use rotate to swap names
	# join names with a space in between
# Output: String with last name first, and first name last


# Next_Vowel
# Input: string
# STEP:
	# create array of vowels - aeiou
	# input string split("")
	# iterate over array of letter
	# IF letter is included in vowels - if vowels.includes?(letter)
	# go to next vowel
	# ELSE return the letter
	# join letters
# Output: String with vowels moved to the next one

def swap_names(string)
	names = string.split(" ")
	names.rotate!(1)
	names.join(" ")
end

# swap_names("John Doe")



def swap_chars(string)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	letters_array = string.downcase.split("")
	letters_array.map! do |letter|
		if vowels.include?(letter)
			vowels.rotate(vowels.index(letter))[1]
		elsif consonants.include?(letter) 
			consonants.rotate(consonants.index(letter))[1]
		else
			letter 
		end
	end
	
	letters_array.join("")
end

#Method store in a hash
#create name results hash
#takes takes name and stores into the key of the hash, takes the output and end result of the other two methods into the value of the hash


def store_the_names(normal_name, sec_name, hash)
	hash[normal_name] = sec_name
	hash
end


#method  prints the names
#takes in hash and prints it out
def print(result)
	result.each do |normal_name, sec_name|
	puts "#{normal_name} is #{sec_name}!"
	end
end




# p swap_names(swap_chars("Felicia Torres"))

quit = ""

store_names_alias = Hash.new

until quit == "quit"

puts "What name do you want to encrypt?"

output = gets.chomp

seceret_output = swap_names(swap_chars(output))

p seceret_output

results = store_the_names(output, seceret_output, store_names_alias)




puts "Are you ready to quit?  If so write quit.  If you want to encrypt write anything else to continue."

	quit = gets.chomp
end

print(results)













