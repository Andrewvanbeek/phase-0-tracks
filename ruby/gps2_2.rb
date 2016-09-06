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
	puts ""
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


sneakthemethod = create_glist("Lemonade Tomatoes Onions")

def add_item_orupdatevalue(list, newitem, quantity)
	list[newitem] = quantity
	return list
end

addedicecream = add_item_orupdatevalue(sneakthemethod,"Ice Cream", 4)
updateonions =  add_item_orupdatevalue(addedicecream,"Tomatoes", 3)
lemondaupdate = add_item_orupdatevalue(updateonions, "Lemonade", 2)

def removalofitem(list, itemtoberemoved)
	list.delete(itemtoberemoved)
	return list
end

remvoallist = removalofitem(updateonions, "Lemonade")

updateicecream = add_item_orupdatevalue(remvoallist, "Ice Cream", 1)

#Took this code out because is same code as add item.  For refactoring make sense to have one mehtod.
# def updatequantity(list, item, quantity)
# 	list[item] = quantity
# 	return list
# end

# quantitylist = updatequantity(sneakthemethod, "apples", 10)

# def printprettylist(list)
# 	list each do |food, itemnum|
# 		puts "#You have to get #{itemnum} of #{food}!"
# 	end
# end


printprettylist(updateicecream)



# What did you learn about pseudocode from working on this challenge?
#I learned pseudocode is really helpful when planning things out.  My guide also showed me how to do in a productive way which is to take this structure of Method:  What to accomplish, What input it takes, What are the steps for this code, and what is the output of the method.  I think I will use this structure moving forward.

# What are the tradeoffs of using arrays and hashes for this challenge?

#  I think hashes make more sense for this exercise because this data was associated with each other, in that the key is associate with the value or quantity here.  We could still do it with arrays but in that case we would need two arrays one for the grocery list item and one for the quantity.


# What does a method return?
#the output of the code running on the parameters you put into.
# What kind of things can you pass into methods as arguments?
#Inputs can vary from different type of data such as integers and strings, but can also data structures such as arrays or hashes include varaibles that can house method output results themselves.

# How can you pass information between methods?
#Store the method as a varaiable and pass it as an arguement, or set up a method within a method through use of class, or use of a global variable.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# I think scope and the breakdown of strings into arrays can be confusing, since there is a lot of room for human error.







