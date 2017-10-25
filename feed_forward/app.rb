require 'sinatra'
require 'sqlite3'

get('/') do

    db = SQLite3::Database.new('db/fast_forward_db.sqlite')
    result = db.execute("SELECT name FROM courses")
    result = result[0..-1]
    erb(:index, locals:{kurser:result})
end


