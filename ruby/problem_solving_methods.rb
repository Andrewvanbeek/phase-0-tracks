
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


arrayforsorting = [5, 7, 6, 10]



def ascendingmethod(arr) #defines the method

  def mergethearrays(arrayhalf1, arrayhalf2)  #Creates a new method that will be used in another method.  This method will take two halves of our original array and put it back togehter.  The first time the program is iterate in it will put the array back together.  but then it will send to the other method, and then finally come back to this method to properly sorted in ascending order.
half1 = 0 #will use these as a means for our loop break rule a means to index different items in both arrays
half2 = 0 #second index to be used with the second half of the array

finalresultmethod = []  #final results will be pushed into this array


loop do  #Do loop that takes in both halves of the array
  break if half2 >= arrayhalf2.length and half1 >= arrayhalf1.length  #break rule for our array that says once both the half1 and half2 vars are >= then the length of the array elements in both array halfs then the loop will stop running.

  if half2 >= arrayhalf2.length or (half1 < arrayhalf1.length and arrayhalf1[half1] < arrayhalf2[half2])  #if statement to decide which array will receive input first
    finalresultmethod << arrayhalf1[half1] #feeds into the final result array
    half1 += 1  #increments
  else
    finalresultmethod << arrayhalf2[half2]  #similar workflow as half1
    half2 += 1
  end
end

  return finalresultmethod #returns the finalresult method

end


  def megrging(tobecutarray) 
    return tobecutarray if tobecutarray.length <= 1  #basically failsafe if the array does not have any array elements
    indexslicer = tobecutarray.length/2 - 1    #use as a means to create the proper ranges in our array halves.  
    arrayhalf1 = megrging(tobecutarray[0..indexslicer])     #use ranges to cut the array, use our indexslicer as reference point
    arrayhalf2 = megrging(tobecutarray[indexslicer+1..-1])  #uses ranges to create to arrays and store in arrayhalfs
    return mergethearrays(arrayhalf1, arrayhalf2)


end
  megrging(arr)  #puts our array input through merging and merging puts it through merge the arrays which will rejoin into a new array tha order has been changed.  Finally that new array will be cut again and processed one more time to create ascending order.
  
  end


p ascendingmethod(arrayforsorting)


#this was a tough exercise!



