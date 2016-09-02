#create a method that takes the first name and last name and swaps.   
# Split the two last names 
#create new array that has [0] = to the last name and the first name to [1]
# then join those array elements.  once joined, spilit them up by character
#then on the array do a .map! on the letters.next and do and if and elsif statements for the vowels
#then join everything back together with join
# p result

def aliasmethod(name)
	name = name.downcase
	# p name
	name = name.split(' ')
	# p name
	alias_array = []
	alias_array1 = name[1]
	alias_array2 = name[0]
	# p alias_array1
	alias_array1 = alias_array1.split('')
	# p alias_array1
	newaliasarray1 = alias_array1.map do |x|
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

# p alias_array2
	alias_array2 = alias_array2.split('')
	# p alias_array2

newaliasarray2 = alias_array2.map do |x|
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
	newaliasarray1 = newaliasarray1.join('')
	newaliasarray1 = newaliasarray1 + " "
	newaliasarray1 = newaliasarray1.capitalize
	# p newaliasarray1
	newaliasarray2 = newaliasarray2.join('')
	newaliasarray2 = newaliasarray2.capitalize
	finalnewaliasarray = []
	finalnewaliasarray[0] = newaliasarray1
	finalnewaliasarray[1] = newaliasarray2
	finalnewaliasarray = finalnewaliasarray.join('')
	return finalnewaliasarray
	# p newaliasarray
end

p aliasmethod("Felicia Torres")