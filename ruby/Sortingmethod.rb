array = [5, 7, 6, 10]



def ascendingmethod(arr)

	def mergethearrays(arrayhalf1, arrayhalf2)
half1 = 0
half2 = 0

finalresultmethod = []


loop do 
	break if half2 >= arrayhalf2.length and half1 >= arrayhalf1.length

	if half2 >= arrayhalf2.length or (half1 < arrayhalf1.length and arrayhalf1[half1] < arrayhalf2[half2])
		finalresultmethod << arrayhalf1[half1]
		half1 += 1
	else
		finalresultmethod << arrayhalf2[half2]
		half2 += 1
	end
end

	return finalresultmethod

end


	def megrging(tobecutarray)
		return tobecutarray if tobecutarray.length <= 1
		indexslicer = tobecutarray.length/2 - 1 
		arrayhalf1 = megrging(tobecutarray[0..indexslicer])
		arrayhalf2 = megrging(tobecutarray[indexslicer+1..-1])
		return mergethearrays(arrayhalf1, arrayhalf2)
  # def mergesort_iter(array_sliced)
  #   return array_sliced if array_sliced.length <= 1
  #   mid = array_sliced.length/2 - 1
  #   left_sorted = mergesort_iter(array_sliced[0..mid])
  #   right_sorted = mergesort_iter(array_sliced[mid+1..-1])
  #   return merge(left_sorted, right_sorted)
  # end

  # mergesort_iter(array)

end
	megrging(arr)
	
	end


p ascendingmethod(array)

