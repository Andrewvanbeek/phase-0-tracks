#create a method that takes the first name and last name and swaps.   
# Split the two last names 
#create new array that has [0] = to the last name and the first name to [1]
# then join those array elements.  once joined, spilit them up by character
#then on the array do a .map! on the letters.next and do and if and elsif statements for the vowels
#then join everything back together with join
# p result

def aliasmethod(name) # Define the method
	name = name.downcase #downcase any input
	# p name
	name = name.split(' ') #turn name into an array
	 if name.length == 3  #create an if statement for people with a space in the last name like me.
	 	name[1] = name[1] + name[2]  #if there are three array elements when a spilit is created then this statement will add the first part of the lastname to the second part of the lastname.
	 	name.delete_at(2) #this part of the code will delete third uncessary array element
	 else
	 end
	alias_array1 = name[1]  #takes the lastname and stores it into a new array(but could be var as well I think).
	alias_array2 = name[0]  #takes the firstname and stores it into a new array(could also be a variable I just went with an array index).
	# p alias_array1
	alias_array1 = alias_array1.split('')  #spilits up the first array into different letters, and those letters become different elements of the array.
	# p alias_array1
	newaliasarray1 = alias_array1.map do |x|  #iterates an if and else statement on all the letters of the lastname in the array.  One portion is for the vowels.  It maps the elements of array1 into a new array of newaliasarray1.
		arrayvowels = ["a", "e", "i", "o", "u"]
	if x == arrayvowels[0]
		x = "e"
	elsif x == arrayvowels[1]
		x = "i"
	elsif x == arrayvowels[2]
		x = "o"
	elsif x == arrayvowels[3]
		x = "u"
	elsif x == arrayvowels[4]
		x = "a"
	elsif x.next == "aa" #this is built for z specifically whoes next letter is aa.
		x = "b"
	elsif x.next == arrayvowels[1] #this portion is for letters whose next letter is vowel.  It says it will actually skip over the vowel if a vowel is the next letter if the original letter is a consant.
		x = x.next.next
	elsif x.next == arrayvowels[2] 
		x = x.next.next
	elsif x.next == arrayvowels[3] 
		x = x.next.next
	elsif x.next == arrayvowels[4] # this is where the consant rule with vowels end.
		x = x.next.next
	else 
	x = x.next #this is the rule with rest of the consants that do not have vowels as the next letter.  it just says x
	end
end

# p alias_array2
	alias_array2 = alias_array2.split('')
	# p alias_array2

newaliasarray2 = alias_array2.map do |x|  #this map function does the same thing for the firstname that the prior map statement did for the last name.
		arrayvowels = ["a", "e", "i", "o", "u"]
	if x == arrayvowels[0]
		x = "e"
	elsif x == arrayvowels[1]
		x = "i"
	elsif x == arrayvowels[2]
		x = "o"
	elsif x == arrayvowels[3]
		x = "u"
	elsif x == arrayvowels[4]
		x = "a"
	elsif x.next == "aa"
		x = "b"
	elsif x.next == arrayvowels[1] 
		x = x.next.next
	elsif x.next == arrayvowels[2] 
		x = x.next.next
	elsif x.next == arrayvowels[3] 
		x = x.next.next
	elsif x.next == arrayvowels[4]
		x = x.next.next
	else 
	x = x.next 
	end
end


# p newaliasarray1
# p newaliasarray2
	# p newaliasarray
	newaliasarray1 = newaliasarray1.join('')  #joins the lastname letter array elements into a string again
	newaliasarray1 = newaliasarray1 + " " #adds a space to the string
	newaliasarray1 = newaliasarray1.capitalize #capitalizes the first letter of the lastname
	# p newaliasarray1
	newaliasarray2 = newaliasarray2.join('') #turns the original firstname into a string.
	newaliasarray2 = newaliasarray2.capitalize #capitalizes the first letter
	finalnewaliasarray = [] #creates new array where the first name and last name can join
	finalnewaliasarray[0] = newaliasarray1 #adding the last name in the first index of the array
	finalnewaliasarray[1] = newaliasarray2 #adding the firstname in second part of the array
	finalnewaliasarray = finalnewaliasarray.join('') #joining the array
	return finalnewaliasarray #returning the resultin
	# p newaliasarray
end


input_var = 0 #will be our var in our method

until input_var == "quit" do #until loop to run into user writes quit

puts "Hey put in your name! First name and Last name that is! Write quit if you are done. If you have lastname with a space that is fine but please no names more than 3 words or else you will get this message again. For example Andrew Van Beek is ok but Andrew Ryan Van Beek is not ok because it is more then 4 words.  also just write quit when you are done."

input_var = gets.chomp

	p aliasmethod(input_var)
end