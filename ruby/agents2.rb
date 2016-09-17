#encryption method
#method that takes any string and advances it one letter using.next.  Do this by create a new string.
# #string is turned into an array and rejoined


# def encryption(string)
# 	new_string_array = string.split("") #abc = [a, b, c]
# 	x = 0
# 	while x < new_string_array.length
# 	new_string_array[x] = new_string_array[x].next
# 	x += 1
# 	end
# 	puts new_string_array.join("")
# end

def encryption(string)
	new_string = ""
	x = 0
	while x < string.length
		
		if string[x] == "z"
			new_string = new_string + "a"
		elsif string[x] == " "
			new_string = new_string + "_"
		else
			new_string = new_string + string[x].next
		
		end
			
	x += 1
end
	p new_string
end


def decryption(new_string)
	alphabet = "abcdefghijklmnopqrstuvwxyz _"
	y = 0
	newstringd = ""
	# if new_string.include?"_"
	while y < new_string.length	
	tochange = alphabet[alphabet.index(new_string[y]) - 1]
	newstringd = newstringd + tochange
	y += 1
	end 
	
	p newstringd
end 







 puts "What do you want to encrypt?"

 output = gets.chomp



 decryption(encryption(output))



