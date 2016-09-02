
# array = [10, 11, 12, 13, 14, 15]

# #pseudocode takes the integers within the array and spit out the index
# #Way to get position of a number is length in an array. for example an array with 5 elements will return with 5.  so to return an index it would be 0 - length.


# def search_array(arr, i)
# valid_input = -1 #this make sures that the count starts from 0
# nilvar = true
# arr.each do |integer| #need to iterate through each element of the array
# 	valid_input +=1  #make sure the indexes increments by 1 level each time array goes through iteration
# 	if arr[valid_input] == i # if the array[valid input] is the same as the array element parameter, the valid input ie the correct index will be printed
# 		 return valid_input  #returns the input
# 		 nilvar = false  #if statement returns the nilvar will turn false
# 	else
# 	end
# end
# if nilvar 
# 	return nil
# else
# end
# end

#  p search_array(array, 550)


# array << 26
# array << 29

# p search_array(array, 10)
# p array



# #Pass through an integer to create that number of integer elements into an array. for example 7 will create produce 7 different integers.  The first two integers has to be 0, and 1.
# 	#

# def fib(number)

# array1 = []
#  number.times do |x| 
#  	new_index = x
#  	array1[new_index] = x 
#  end
# p array1
#   array1.map! do |y|
#   	if y == 0
#   		y = 2
#   		x = -1
#   	elsif y == 1
#   		y = 3
#   		x = -2
#   	else
#   		y = y
#   		x = 0
#   	end

#   	varavb = array1[array1.index(y) - 2] + array1[array1.index(y) - 1 + x]
#   	 end
#   p array1
#   p array1[-1]
# end


#  p fib(9)

#Start with array with 0 and 1
#Shovel method/ add other elements 




def fib(number)
  fibarray = Array.new(number, 1)
  return fibarray
end

fibarray2 

p fib(50)


