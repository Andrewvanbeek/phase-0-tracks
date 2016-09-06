shoes = {nike: "20", addidas: "30", puma: "80"} 
p shoes  

shoes.each do |shoebrand, price| 	
	puts "#{shoebrand} costs #{price} dollars" 
end  

p shoes[:nike]

new_shoes = shoes.map do |shoebrand, price| 	
	shoebrand = shoebrand, price = price
end

p new_shoes



array = ["a", "b", "woof"]

array.delete_if {|a| a == "b" or a == "a"}

puts array