require 'faker'
require 'sqlite3'

database = SQLite3::Database.new ( "eightdb.db") 

# do |eightfivedb|
# 	eightfivedb.execute( "select * from table" ) do |row|
# 		p row
# 	end
# end	

create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS awesomething (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT
	)
SQL

database.execute(create_table_cmd)

def createnames
coolthings = ["batman", "kungfu", "nun chucks", "Jackie Chan", "robots"].sample
coolthings
end

def create_awesomethings(database, name, age)
	database.execute("INSERT INTO awesomething (name, age) VALUES (?, ?)", [name, age])
end



200.times do
	create_awesomethings(database, Faker::Name.name, 0)
end