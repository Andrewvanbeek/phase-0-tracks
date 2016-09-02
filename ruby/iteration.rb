coffeeshops = ["Starbucks", "Petes", "Philz", "Sojuus", "Coffee Bar"]

def coffeeyum (a)
	a.each {|x| puts "#{x} is the best coffeshop!"}
end

coffeeyum(coffeeshops)


def himethod(a)
a.map! do |c|
c.upcase
end
end

himethod(coffeeshops) 

new_coffeeshop = coffeeshops.map  do |d| d + "!" end

p new_coffeeshop


coffeedrinks = {starbucks: "Pumpkin Spice",
petes: "Americano",
philz: "Mint Coffee",
sojuus: "Chai",
coffebar: "vegan juice"}

coffeedrinks.each do |coffeeplace, drinkz| puts "#{coffeeplace} is the best coffeeshop and the #{drinkz} is the best drink ever!" end


himethod(coffeeshops)

new_coffeeshop = coffeeshops.map  do |d| d + "!" end

p new_coffeeshop


coffeedrinks = {starbucks: "Pumpkin Spice",
petes: "Americano",
philz: "Mint Coffee",
sojuus: "Chai",
coffebar: "vegan juice"}

coffeedrinks.each do |coffeeplace, drinkz| puts "#{coffeeplace} is the best coffeeshop and the #{drinkz} is the best drink ever!" end

def delete_me(arr)
    new_arr = []
    arr.each do |x| 
        if x <= 3
            new_arr << x
        end
    return new_arr
    end
end

a = [1, 2, 3, 4]

p delete_me(a)

def delete_me(arr, value)
    arr.each do |x|
        p x
        var = x
        if x > value
            arr.delete(x)
        end
    end
end

a = [1, 2, 3, 4]
p delete_me(a, 2)

numbers = [1,2,3,4,5,6,7,8,9,10]

even_numbers = []

numbers.each do |num|
    if num % 2 == 0
        puts num
        even_numbers.push(num)
    end
end

def remove_stuff (arr)
    arr.each do |x|
        if x % 2 == 0
            arr.delete(x)
        end
    end
end

numbers = [1,2,3,4,5,6,7,8,9,10]

p remove_stuff (numbers)