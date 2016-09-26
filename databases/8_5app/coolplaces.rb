

# Program that will ask you what is your favorite city to visit, and also what is a good thing to do there.
#  It will then ask if there is a city you are curious about, and then it will show all the prievous suggestions of what to do in the city
#  For example if you are curious about Hong Kong, you will write hong kong and all the activities that have to do with hong kong written by prior users will come back
#  In this example for hong kong eating dim sum and shopping should come back
#  Finally in a loop so it will ask you to continute until you are done.




require 'faker'
require 'sqlite3'

database = SQLite3::Database.new ("coolplaces.db") 


create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS thing_to_do (
		id INTEGER PRIMARY KEY,
		things_to_do VARCHAR(255)
	)
SQL


create_table_cmd1 = <<-SQL 
	CREATE TABLE IF NOT EXISTS places_to_visit (
		id INTEGER PRIMARY KEY,
		city_to_visit VARCHAR(255),
		things_id INT,
		FOREIGN KEY (things_id) REFERENCES thing_to_do(id)
	)
SQL




database.execute(create_table_cmd)
database.execute(create_table_cmd1)

sequence_ender = ""
until sequence_ender == "done"

	puts "What is your favorite city to visit?"

	citytov = gets.chomp.downcase

	puts "What is a good thing to do there."

	do_thing = gets.chomp.downcase

	database.execute("INSERT INTO thing_to_do (things_to_do) VALUES (?)", [do_thing]) 

	idcount = database.execute("SELECT id 
	    FROM    thing_to_do
	    WHERE   ID = (SELECT MAX(id)  FROM thing_to_do)
	")
	database.execute("INSERT INTO places_to_visit (city_to_visit, things_id) VALUES (?, ?)", [citytov, idcount])


	puts "Is there any other city you are curious about?  If so write the city name to see what activities are associated with it."

		othercity = gets.chomp.downcase

	othercityfact = database.execute("SELECT things_to_do FROM places_to_visit
	JOIN thing_to_do ON places_to_visit.things_id = thing_to_do.id
	WHERE places_to_visit.city_to_visit = ? ", [othercity])

	puts "Here are the things people have listed to do in that city."
	puts othercityfact

	puts "If you are done, simply write done.  If you want to add another city and activity press any key to continue."

		sequence_ender = gets.chomp.downcase

end




