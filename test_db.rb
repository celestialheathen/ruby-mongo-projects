require 'mongo'

client = Mongo::Client.new('mongodb://127.0.0.1:27017/schoolDB')
db = client.database

begin  
  p db.collections # Collection objects
  p db.collection_names # Collection names
rescue 
  puts "Error"
end 