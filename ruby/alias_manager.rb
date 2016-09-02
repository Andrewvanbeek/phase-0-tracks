#create a method that takes the first name and last name and swaps.   
# Split the two last names 
#create new array that has [0] = to the last name and the first name to [1]
# then join those array elements.  once joined, spilit them up by character
#then on the array do a .map! on the letters.next and do and if and elsif statements for the vowels
#then join everything back together with join
# p result

def aliasmethod(name)
	name = name.downcase
	p name
	name = name.split(' ')
	p name
	alias_array = []
	alias_array[0] = name[1]
	alias_array[1] = name[0]
	alias_array = alias_array.join(' ')
	p alias_array
	alias_array = alias_array.split('')
	p alias_array
	newaliasarray = alias_array.map do |x|
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
	p newaliasarray
	newaliasarray = newaliasarray.join('')
	p newaliasarray
	newaliasarray = newaliasarray.split(' ')
	p newaliasarray
	newaliasarray[0] = newaliasarray[0] + " "
	newaliasarray[0] = newaliasarray[0].capitalize
	newaliasarray[1] = newaliasarray[1]
	newaliasarray = newaliasarray.join('')
	p newaliasarray
end

aliasmethod("Felicia Torres")