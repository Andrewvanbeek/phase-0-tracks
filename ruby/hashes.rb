#Create a program with a hash that keeps tracks of user preferences.
# Prompt user for Cient Name, Region, Specific Preferences and also and also prompt if they are sure on the answers. 

 update_fields = "yes".upcase

 interiordesign = {clientname: "",
 	region: "", 
 	specificpreferences: ""}






 puts "What is the name of the Client you want to add or update?"
 interiordesign[:clientname] = gets.chomp.upcase

 puts "What Region do they live in?"

 interiordesign[:region] = gets.chomp

 puts "What are there specific preferences?"

 interiordesign[:specificpreferences] = gets.chomp

 puts "Is there any additonal you want to add?"

 interiordesign[:additonal] = gets.chomp

 puts "You wrote for client: #{interiordesign[:clientname]}, region: #{interiordesign[:region]}, preferences: #{interiordesign[:specificpreferences]}, additional comments: #{interiordesign[:additonal]}.  Is this correct?"

 puts "Do you need to update any of these sections? If so write Yes."

update_fields = gets.chomp.upcase

puts "What do you want to update? Type 1 for Clientname, Type 2 for specificpreferences, type 3 for region, type 4 for additional notes"

	updatefield = gets.chomp.upcase

	if updatefield == 1.to_s
		puts "What is the name of the Client you want to add or update?"
 		interiordesign[:clientname] = gets.chomp.upcase
 	elsif updatefield == 2.to_s
 		puts "What are there specific preferences?"
		interiordesign[:specificpreferences] = gets.chomp
	elsif updatefield == 3.to_s
		puts "What Region do they live in?"
 		interiordesign[:region] = gets.chomp
 	elsif updatefield == 4.to_s
 		puts "Is there any additonal you want to add?"

 	interiordesign[:additonal] = gets.chomp
 else 
 end

puts "You wrote for client: #{interiordesign[:clientname]}, region: #{interiordesign[:region]}, preferences: #{interiordesign[:specificpreferences]}, additional comments: #{interiordesign[:additonal]}.  Is this correct?"


 		




# 	 puts "What is the Client Name?"
#  Interiordesign[:clientname] = gets.chomp

#  puts "What Region do they live in?"

#  Interiordesign[:region] = gets.chomp

#  puts "What are there specific preferences?"

#  Interiordesign[:specificpreferences] = gets.chomp

#  puts "Is there any additonal you want to add?"

#  Interiordesign[:additonal] = gets.chomp

# else



	puts "ok awesome"

	puts interiordesign

 

