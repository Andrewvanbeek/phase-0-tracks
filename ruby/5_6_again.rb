# # Write a method that takes an array of integers and an integer to search for. 
# # The method should return the index of the item, or nil if the integer is not present in the array. 
# # Don't use built-in array methods like .index. You are allowed to use .length and .each.
# # Here's an example of how we might use your method (assuming you call it search_array):

# #Method1 looks for the integer in the array
# #two inputs, the array and the input
# #can't use index
# #create another array
# #if the array includes the number then do an iteration over that array to equal

# def searcharray(array, num)
# 	array2 = Array.new(array.length, 0)
# 	i = -1
# 		array2.map! do |x|
# 			x = x + i
# 			i += 1
# 		end
# 	 n = 0
# 		array.each do |y|
# 			if y == num
# 				puts array2[n]
# 			end
# 			n += 1
# 		end
# end



# aray =[42, 89, 23, 1]

# searcharray(aray, 1)

# #fibonnaci
# #Method should be able to add prior indexes to each other
# #input is a number
# #method 1 steps is to take that number, create an array of that length


# #method 2 should be able to take that output of that which is the array and change the first two numbers to 0, and 1

# #method 3 should be able to add the two prior indexes of 0 and 1 to map the value of the next index, might be able to do this with the subsitute method
# #input is the array from the firt method, and the seconds methods effect on it

# def createarray(number)
# 	fibarray = Array.new(number, 3)
# end

# def zero_and_one(fibearray)
# 	fibearray[0] = 0
# 	fibearray[1]= 1
# 	fibearray
# end

# def putitalltogether(numz)
# 	fibonnaciarray = zero_and_one(createarray(numz))
# 	p fibonnaciarray
# 	i = 0
# 	newarray =[0, 1]
# 	i = 0
# 	while i < fibonnaciarray.length 
# 		newarray << newarray[0 + i] + newarray[1 + i]
# 	i += 1
# 	end
# 	newarray.delete_at(-1)
# 	newarray.delete_at(-1)
# 	p newarray
# end

# # 0, 1, 3, 3, 3


#  putitalltogether(2)






#  #Create a sorting method
#  #least lowest to highest
#  #input is an array of integers.
#  #if integer is less then the integer one index in front of it it should shovel it into another array.
#  #could be done through iteration of the array.  i.e goes through each element and compares if element is greater then or lesser then

#  def sorting(array)
#  	array2 = []
#  	if array
#  	p array2
#  end  


# sortingarray = [3, 2, 5, 6]

# sorting(sortingarray)

h = { foo:[1,2,[3,4],{a:{bar:42}}] }

h[:foo][3][:a][:bar] = 58

p h[:foo][3][:a]

