def avb( x, y)
	name1 = x
	name2 = y
	puts "Why Hello there!"
	yield(name1, name2)
end

avb("Steve", "Bill") {|name1, name2| puts "hey there #{name1} #{name2}!"}