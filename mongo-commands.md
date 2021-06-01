# Start mongoDB
brew services start mongodb-community@4.4

# Stop mongoDB
brew services stop mongodb-community@4.4

# Show a list of databases
show dbs

# Show current db
db

# Create or switch to db
use exampleDB

# Create collection within a db
db.createCollection('students')

# Create collection with document
db.teachers.insert( {name: 'Zimmerman', class: 'bio'})

# Insert a document for a collection
db.students.insert({
  name: 'james',
  age: 19,
  grade: 83.74,
  major: ['mobile', 'full-stack', 'gaming'],
  address: {
    city: 'queens',
    state: 'new york',
    zip: 11374
  }
})

# Insert multiple documents for a collection
db.students.insertMany([
  {
    name: 'Mike',
    age: 24,
    grade: 80.01,
    major: ['fitness', 'ruby']
  },
  {
    name: 'Gabe',
    age: 40,
    grade: 99.99,
    major: ['language', 'sports', 'python']
  },
  {
    name: 'Max',
    age: 21,
    grade: 100,
    major: ['comedy', 'reactjs', 'gaming']
  }
])

# Search for a document
db.students.find()
db.students.find( {major: 'gaming' } )
db.students.find( {major: 'gaming' } ).pretty()

# Search by ID
db.teachers.find({
  _id: ObjectId("60b64e670858adc14e5ce6cf")
})

# Search by field
db.students.find({
  grade: { $exists: true }
})

# Search by logical AND 
db.teachers.find({$and: [ {gender: 'male'}, {homework: false} ] })

# Search by logical OR
db.teachers.find({$or: [ {class: 'English'}, { name: 'Cooper'} ] })
db.teachers.find({$or: [ {homework: true}, {class: 'Music'} ] })

# Sorting
db.students.find().sort( {name: 1} )
db.students.find().sort( {name: -1} )

# Limit to a number of results
db.students.find().limit(3)

# Update a field within a document
db.students.update( {name: 'james'}, 
  {
  $set: {
    name: 'James',
    age: 9
  }
})

db.students.update( {name: 'James'}, 
  {
  $set: {
    title: 'Sifu',
    age: 100
  }
})

# Replace a document
db.students.update( {name: 'James'},
  {
    name: 'James',
    age: 55,
    grade: 65.21,
    major: ['ruby', 'mobile']
})

# Remove a field
db.students.update( {name: 'James'},
  {
  $unset: {age: ""}
})

# Rename a field
db.students.update ( {age: 24},
  {
  $rename: {grade: 'gpa'}
})

# Delete a document
db.students.remove({
  name: 'Mike'
})

# Delete a collection
db.teachers.drop()

# Delete a database
db.dropDatabase()