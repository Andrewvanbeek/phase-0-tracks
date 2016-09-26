require 'faker'
require 'sqlite3'

database = SQLite3::Database.new ("coolplaces.db") 

# do |eightfivedb|
# 	eightfivedb.execute( "select * from table" ) do |row|
# 		p row
# 	end
# end	

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

puts "What is your favorite city to visit?"

citytov = gets.chomp

puts "What is your favorite thing to do there?"

do_thing = gets.chomp

database.execute("INSERT INTO thing_to_do (things_to_do) VALUES (?)", [do_thing]) 

# variable = database.execute("SELECT TOP 1 id FROM thing_to_do ORDER BY column_name DESC")

# database.execute("INSERT INTO places_to_visit (city_to_visit, things_id) VALUES (#{citytov}, #{variable})")



# def createnames
# coolthings = ["batman", "kungfu", "nun chucks", "Jackie Chan", "robots"].sample
# coolthings
# end

# def create_awesomethings(database, name, age)
# 	database.execute("INSERT INTO awesomething (name, age) VALUES (?, ?)", [name, age])
# end



# 200.times do
# 	create_awesomethings(database, Faker::Name.name, 0)
# end