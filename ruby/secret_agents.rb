
#Driver was: Asiya Gizatulina, #Navigator was Andrew Van Beek

# defines an encrypting method
def encrypt(string)
	
i = 0
while i < string.length
  string[i] = string[i].next
  
i += 1
end

return string
end

# defines a decrypting method
def decrypt(string2)
i = 0
new_string ="" #and we start from an empty word
alphabet = "abcdefghijklmnopqrstuvwxyz"
while i < string2.length
      num = alphabet.index(string2[i]) # this gonna help to find an index of each letter
      num -=1  #and then go one down
      new_string = new_string + alphabet[num]
      i += 1
end
return new_string
end

#asking for an input
puts "hey do you want to encrypt or decrypt?"
action = gets.chomp

puts "what is the password?"
password = gets.chomp

if action == "encrypt"
   p " The encryption is " + encrypt(password)
elsif action == "decrypt"
	p " The decryption is " + decrypt(password)
end

#puts decrypt(encrypt("swordfish"))
# this works because decrypt basicaly reverse results of encrypt