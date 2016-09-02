# def delete_me(arr) #create the method
# 	new_arrary = [] #create a new array
# 	arr.each do |x| #iterated the first array
# 		new_arrary << x  #had all the elements that were being iterated in the old array shoveled into the new_array
# 		if x > 2    #if statement that ran if the old array value of x was greater then 2.  
# 		new_arrary.delete(x)  #if it was greater then the new_array would delete any element within itself that had the same value as x in the old array.
# 	else
# 	end
# 	end
# return new_arrary #returns new array
# end

# array = [1, 2, 3, 4]

# p delete_me(array)


# #


# # coffeeshops = ["Starbucks", "Petes", "Philz", "Sojuus", "Coffee Bar"]

# # new_coffeeshop = coffeeshops.map  do |d| d + "!" end

# # p new_coffeeshop


def fib(number)

array1 = []
array2 = []
 number.times do |x| 
 	new_index = x
 	array1[new_index] = x
 end
 array1.each do |y|
array2 << y
end

p array2

array2 = array1.map do |y|
		 y = array2[array2.index(y) - 2].to_i + array2[array2r.index(y) - 1 + x].to_i
  	if y == 0
  		y = 2
  		x = -1
  	elsif y == 1
  		y = 3
  		x = -2
  	elsif y == 2
  		array2[2] = 1
else
  		x = 0
  	end
  
end
p array2
end









 p fib(9)