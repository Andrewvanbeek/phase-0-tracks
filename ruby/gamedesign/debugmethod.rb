def stringslicer(input)

arr = input.split('')
array2 = (1..input.length).to_a
array2.map! do |a|
			"_"
		end

arr.each do |b|
	if b == input
array2[arr.index(b)] = b
end
end

puts array b
end
