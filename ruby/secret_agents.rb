#Have to .next abc
#Problem is that .next just moves the last letter of the string
#Encrypt, idea is to take threee pieces apart and then add them back to together in a final variable.
#Problem is that z.next returns aa, so since this code will only use one .next, do not have to worry about other strings such as x entering the double letter range.
#




def encrypt(str)
	var1 = str[0].next
	var2 = str[1].next
	var3 = str[2].next
	var4 = var1 + var2 + var3
if var1 == "aa"
	var1 = "a"
	var4 = var1 + var2 + var3
elsif var2 == "aa"
	var2 = "a"
	var4 = var1 + var2 + var3
elsif var3 == "aa"
	var3 = "a"
	var4 = var1 + var2 + var3
end
	var4 = var1 + var2 + var3
end

Encrypting_Oh_Yeah = encrypt("abc")

puts Encrypting_Oh_Yeah

#Decrptyion is to reverse the effects of the prior encryption method.  To do this need to use an index of the alphapet
#Need to start with bcd = abc. b + c +d
def decryption(str)
	index = "abcdefghijklmnopqrstuvwxyz"

var1 = str[0].index
	#bcdabcdefghijklmnopqrstuvwxyz
if var1 == "a"
	var1 = index[25]
elsif var1 == "b"
	var 1


