
array = [10, 11, 12, 13, 14, 15]

#pseudocode takes the integers within the array and spit out the index
#Way to get position of a number is length in an array. for example an array with 5 elements will return with 5.  so to return an index it would be 0 - length.


def search_array(arr, i)
valid_input = -1
nilvar = true
arr.each do |integer|
	valid_input +=1 
	if arr[valid_input] == i
		 return valid_input
		 nilvar = false
	else
	end
end
if nilvar 
	return nil
else
end
end


array << 26

p search_array(array, 2)



#Pass through an integer to create that number of integer elements into an array. for example 7 will create produce 7 different integers.  The first two integers has to be 0, and 1.
	#

def fib(number)
array1 = []
 number.times do |x| 
 	new_index = x
 	array1[new_index] = x 
 end
p array1
  array1.map! do |y|
  	if y == 0
  		y = 2
  		x = -1
  	elsif y == 1
  		y = 3
  		x = -2
  	else
  		y = y
  		x = 0
  	end
  	varavb = array1[array1.index(y) - 2] + array1[array1.index(y) - 1 + x]
  	if varavb == 8
  		varavb = array1[array1.index() - 2] + array1[array1.index(y) - 1 + x]
  	else
  	end
  end
  p array1
  p array1[-1]
end

 p fib(9)
