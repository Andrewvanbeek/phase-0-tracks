# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 1.  define a method to create a list of grocery items
  # 2.  Takes input as an arguement and method should be able to cut up the string into different assoviative array elements 
  # 3.  Create a variable to be set as the default quantity for all elements at this point of this method.  This quantity later store as key value pair
  # 4. print the list to the console [can you use one of your other methods here?]
# # 5.  This method returns a hash

# Method add_item to the list, add the default quantity to the new item in the list 
# input: item and quantity
# steps:  1 takes the item and sets up as the key input for the hash, takes the quantity and sets up values of the the item key
# output:  return the new list/hash with the added items and quantity

# Method to remove an item from the list
# input:  Would take the item you are trying as well as its value
# steps:  if the input is the same as our hash key then we will remove the key value pair that matches in the array.
# output:returns the hash with the item removed

# Method to update the quantity of an item
# input: Takes the item and the new quantity, if the input matches the key of the hash, the new value input will update the old value input
# steps:ditto ^
# output:  hash with new values

# Method to print a list and make it look pretty
# input:  should be our variable that has the results of the other methods stored.
# steps: p the variable
# output:  the hash list


def printprettylist(list)
	puts "-------------Get YO FOOD-----------------"
	list.each do |food, itemnum|
		puts "You have to get #{itemnum} of #{food}!"
	end
	puts "-------------Get YO FOOD-----------------"
end


def create_glist(groceryitems)
	grocery_list = {}
	groarray = groceryitems.split(' ')
	groarray.each do |a|
		grocery_list[a] = 1
	end
	printprettylist(grocery_list)
	return grocery_list
end


sneakthemethod = create_glist("carrots apples cereal pizza")

def add_item(list, newitem, quantity)
	list[newitem] = quantity
	return list
end

addedlist = add_item(sneakthemethod,"ice cream", 1)

def removalofitem(list, itemtoberemoved)
	list.delete(itemtoberemoved)
	return list
end

remvoallist = removalofitem(sneakthemethod, "carrots")

def updatequantity(list, item, quantity)
	list[item] = quantity
	return list
end

quantitylist = updatequantity(sneakthemethod, "apples", 10)

# def printprettylist(list)
# 	list each do |food, itemnum|
# 		puts "#You have to get #{itemnum} of #{food}!"
# 	end
# end


printprettylist(sneakthemethod)









