
#Item we are storing the grocery list
#Program to have two hashes stored into a bigger hash.  The bigger has should be printed.
#input take the gets.chomp inputs of the grocerey item and stores into the first array. the second the gets.chomp will store into the variable.
#Steps 1.  will have a until loop that loops through until the user writes "done"
# 2.  Will prompt the user for the first item in the grocery list.  The item will be store in the first array.
# 3.  The Second prompt will ask the user for quantity of that item.  The second quantity will be store in the second array for quantity.
# 4 If done will have a method creates a hash that stores the first array through use of an increment variable as the key to equal the value of the second array.
# 5  Will ask if the user is done?  If done will print the list out, if no will puts update item? add item? remove?
# 6 	Add item will add an item to the new array
# 7 the input of the add item array will be the (key, newquantity)
# 8 Output: will be the new list
#8 User will be given the done prompt again
#9 Remove item method
#10 Input will be the key in the hash.
#11 Steps the hash[key].delete
#12 Output will be new list
#13 update item will be the same code as the add item
#14 output will be new item
	

donevar = 0
indexer = 0
glistitems = []
glistvalues = []
listhash = {}

def removalofitem(list ,itemtoberemoved)
	list.delete(itemtoberemoved)
	return list
end

def add_item_orupdatevalue(list, newitem, quantity)
	list[newitem] = quantity
	return list
end

def printprettylist(list)
	puts "-------------Get YO FOOD-----------------"
	list.each do |food, itemnum|
		puts "You have to get #{itemnum} of #{food}!"
	end
	puts "-------------Get YO FOOD-----------------"
end

while donevar != "DONE"


	puts "What item do you want to add to your grocerey list"
	glistitems[indexer] = gets.chomp
	p glistitems
	p indexer
	

	puts "How many of #{glistitems[indexer]} do you want?"
	quantity = gets.chomp
	glistvalues[indexer] = quantity.to_i
	p glistvalues

	listhash[glistitems[indexer]] = glistvalues[indexer]
	p listhash

	indexer += 1
	p indexer


	puts "Are you done?  If so write FINISHED. If not write UPDATE to update an list item qunatity.  If you want to remove an item, write REMOVE. If you want to add item write ADD." 
donevariable = 0
while donevariable != "FINISHED"

	vardone = gets.chomp
	donevariable = vardone.upcase
	

	if donevariable == "FINISHED"
		printprettylist(listhash)
	elsif donevariable == "REMOVE"
		puts "What item do you want to remove?"
		deleteditem = gets.chomp
		removalofitem(listhash, deleteditem)
		puts "Are you done?  If so write FINISHED. If not write UPDATE to update an list item qunatity.  If you want to remove an item, write REMOVE. If you want to add item write ADD." 
	elsif donevariable == "ADD"
		puts "What item do you want to add?"
			itemtobeadded = gets.chomp
		puts "How many do you want of #{itemtobeadded}?"
			itemtobeaddedquantity = gets.chomp
		add_item_orupdatevalue(listhash, itemtobeadded, itemtobeaddedquantity)
		puts "Are you done?  If so write DONE. If not write UPDATE to update an list item qunatity.  If you want to remove an item, write REMOVE. If you want to add item write ADD." 
	elsif donevariable == "UPDATE"
		puts "What item do you want to be updated?"
			itemtobeupdated = gets.chomp
		puts "What is the new quantity of #{itemtobeupdated}?"
			newitemquant = gets.chomp
		add_item_orupdatevalue(listhash, itemtobeupdated, newitemquant)
		puts "Are you done?  If so write DONE. If not write UPDATE to update an list item qunatity.  If you want to remove an item, write REMOVE. If you want to add item write ADD." 
	else
		"puts please try to write the correct commands in capital letters such as DONE, ADD, UPDATE, REMOVE." 
	end
end

puts "Are you sure you are done?  Write done if yes"

donevar = gets.chomp.upcase



end


