# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true
db2 = SQLite3::Database.new("coyotes.db")
db2.results_as_hash = true


# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end


get '/students/new' do
  erb :new_student
end

get '/coyotes' do
  @coyotes = db2.execute("SELECT * FROM coyotes_phase_zero")
  erb :coyotes
end

# get '/coyotes' do
#  erb :coyotes
# end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/coyote' do
  db2.execute("INSERT INTO coyotes_phase_zero (name, comment) VALUES (?,?)", [params['name'], params['comment']])
  redirect '/coyotes'
end

# add static resources