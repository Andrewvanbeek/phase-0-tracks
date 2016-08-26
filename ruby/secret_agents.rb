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
	var1 = index[3]
elsif var1 == "c"
	var1 = index[4]
elsif var1 == "d"
	var1 = index[5]
elsif var1 == "e"
	var1 = index[6]
elsif var1 == "f"
	var1 = index[7]
elsif var1 == "g"
	var1 = index[8]
elsif var1 == "h"
	var1 = index[9]
elsif var1 == "i"
	var1 = index[10]
elsif var1 == "j"
	var1 = index[11]
elsif var1 == "k"
	var1 = index[12]
elsif var1 == "l"
	var1 = index[13]
elsif var1 == "m"
	var1 = index[14]
elsif var1 == "p"
	var1 = index[15]
elsif var1 == "q"
	var1 = index[16]
elsif var1 == "r"
	var1 = index[17]
elsif var1 == "s"
	var1 = index[18]
elsif var1 == "t"
	var1 = index[19]
elsif var1 == "u"
	var1 = index[20]
elsif var1 == "v"
	var1 = index[21]
elsif var1 == "w"
	var1 = index[22]
elsif var1 == "x"
	var1 = index[23]
elsif var1 == "y"
	var1 = index[24]
elsif var1 == "z"
	var1 = index[0]


