
array = [10, 11, 12, 13, 14, 15]

#pseudocode takes the integers within the array and spit out the index
#Way to get position of a number is length in an array. for example an array with 5 elements will return with 5.  so to return an index it would be 0 - length.


def search_array(arr, i)
valid_input = -1 #this make sures that the count starts from 0
nilvar = true
arr.each do |integer| #need to iterate through each element of the array
	valid_input +=1  #make sure the indexes increments by 1 level each time array goes through iteration
	if arr[valid_input] == i # if the array[valid input] is the same as the array element parameter, the valid input ie the correct index will be printed
		 return valid_input  #returns the input
		 nilvar = false  #if statement returns the nilvar will turn false
	else
	end
end
if nilvar 
	return nil
else
end
end


array << 26
array << 29

p search_array(array, 26)
p array



# Start with array with 0 and 1
# Shovel method/ add other elements 


def fib(number)
  fibarray = Array.new(number, 0)
  incrementindex = -1
  fibarray2 = fibarray.map do |y|
  	y = incrementindex
  	incrementindex += 1
  	incrementindex
  end
  #[0, 1, 2, 3]
 fibstart = [0, 1, "a"]
  fibarray2.map! do |x|
  	if x == 0
  		x = fibstart[0]
  	elsif x == 1
  	x = fibstart[1]
  	elsif x == fibstart.index("a")
      x = 1
    else
      x = fibarray2[x - 2] + fibarray2[x - 1]
  end
  end
  return fibarray2[-1]
end

p fib(100)


