#Start mongoDB
brew services start mongodb-community@4.4

#Stop mongoDB
brew services stop mongodb-community@4.4

#Show a list of databases
show dbs

#Show current db
db

#Create or switch to db
use exampleDB

#Create collection within a db
db.createCollection('students')

#Create collection with document
db.teachers.insert( {name: 'Zimmerman', class: 'bio'})

#Insert a document for a collection
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

#Insert multiple documents for a collection
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

#Search for a document
db.students.find( {major: 'gaming' } ).pretty()

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

db.students.update( {name: 'James'},
  {
    name: 'James',
    age: 55,
    grade: 65.21,
    major: ['ruby', 'mobile']
})

db.students.update( {name: 'James'},
  {
  $unset: {age: ""}
})

db.students.update ( {age: 24},
  {
  $rename: {grade: 'gpa'}
})

db.students.find({
  grade: { $exists: true }
})

db.students.remove({
  name: 'Mike'
})

db.teachers.drop()

db

db.dropDatabase()