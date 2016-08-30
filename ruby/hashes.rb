#Create a program with a hash that keeps tracks of user preferences.
# Prompt user for Cient Name, Region, Specific Preferences and also and also prompt if they are sure on the answers. 

 Interiordesign = {clientname: "",
 	region: "", 
 	specificpreferences: ""}

 puts "What is the Client Name?"
 Interiordesign[:clientname] = gets.chomp

 puts "What Region do they live in?"

 Interiordesign[:region] = gets.chomp

 puts "What are there specific preferences?"

 Interiordesign[:specificpreferences] = gets.chomp

 puts "Is there any additonal you want to add?"

 Interiordesign[:additonal] = gets.chomp

 puts "You wrote for client: #{Interiordesign[:clientname]}, region: #{Interiordesign[:region]}, preferences: #{Interiordesign[:specificpreferences]}, additional comments: #{Interiordesign[:additonal]}.  Is this correct?"

 puts "Do you need to update any of these sections? If so write Yes."

update_fields = "Yes"

if update_field = "Yes"

	 puts "What is the Client Name?"
 Interiordesign[:clientname] = gets.chomp

 puts "What Region do they live in?"

 Interiordesign[:region] = gets.chomp

 puts "What are there specific preferences?"

 Interiordesign[:specificpreferences] = gets.chomp

 puts "Is there any additonal you want to add?"

 Interiordesign[:additonal] = gets.chomp

else

	puts "ok awesome"
end
 

