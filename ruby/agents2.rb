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
		else
			new_string = new_string + string[x].next
	end
			
	x += 1
end
	puts new_string
	new_string
end


def decryption(new_string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	y = 0
	newstringd = ""
	while y < new_string.length
	tochange = alphabet[alphabet.index(new_string[y]) - 1]
	newstringd = newstringd + tochange
	puts newstringd
	y += 1
	end 
	
end 




#  output = encryption("abc")

 # p decryption(output)