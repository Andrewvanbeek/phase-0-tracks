

# Program that will ask you what is your favorite city to visit, and also what is a good thing to do there.
#  It will then ask if there is a city you are curious about, and then it will show all the prievous suggestions of what to do in the city
#  For example if you are curious about Hong Kong, you will write hong kong and all the activities/travel suggestions that have to do with hong kong written by prior users will come back
#  In this example for hong kong eating dim sum and shopping should come back
#  Finally in a loop so it will ask you to continute until you are done.

#pseudocode

#create a program that allows the user to say their favorite city to visit.  Then allow the user to suggest a thing to do in the city.
#At the end users can query the database for a certain city and it will return prior suggestions of things to do in the city.

#SQL side
#TWO tables: places_to_visit and thing_to_do
#places_to_visit will have have two main columns other then the foreign key and primary key.  Columns will be city to visit and the things_id(will work as foreign key).
#other table of thing_to_do will just have things_to_do in the city with the primary key.

#program
#prompts user what city is their favorite.  They response gets stored in a variable.
#Second prompt asks what they like to do in that city, and that gets store in a variable.

#those variables should then be stored in the database within the tables.  Making  sure the primary id of thing_to_do matches the integer number for thing_id for a join to work properly.

#the prompt will then ask the user if there is another city they are interested in.  If the sql where statement is true then and the city has been mentioned before, then all the activities suggested with that city will be displayed.
#possible way I could improve upon this is refactoring and saving all the logic as methods rather than variables for readability.




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

def insertplaces(database, do_thing)
    database.execute("INSERT INTO thing_to_do (things_to_do) VALUES (?)", [do_thing])
end

def getidint(database)
  database.execute("SELECT id
      FROM    thing_to_do
      WHERE   ID = (SELECT MAX(id)  FROM thing_to_do)
  ")
end

def get_things_to_do_in_city(database, othercity)
  database.execute("SELECT things_to_do FROM places_to_visit
  JOIN thing_to_do ON places_to_visit.things_id = thing_to_do.id
  WHERE places_to_visit.city_to_visit = ? ", [othercity])
end


database.execute(create_table_cmd)
database.execute(create_table_cmd1)

sequence_ender = ""

until sequence_ender == "done"

  puts "What is your favorite city to visit?"

  citytov = gets.chomp.downcase

  puts "What is a good thing to do there."

  do_things = gets.chomp.downcase

 insertplaces(database, do_things)

  idcount = getidint(database)
  database.execute("INSERT INTO places_to_visit (city_to_visit, things_id) VALUES (?, ?)", [citytov, idcount])


  puts "Is there any other city you are curious about?  If so write the city name to see what activities are associated with it."

    othercitys = gets.chomp.downcase

  othercityfact = get_things_to_do_in_city(database, othercitys)

  puts "Here are the things people have listed to do in that city."
  puts othercityfact

  puts "If you are done, simply write done.  If you want to add another city and activity press any key to continue."

    sequence_ender = gets.chomp.downcase

end




