db.teachers.insert({
  name: 'Mace',
  class: 'History',
  gender: 'male',
  homework: true
})

<!-- > db.teachers.find()
{ "_id" : ObjectId("60b64e670858adc14e5ce6cf"), -->

db.teachers.find({
  _id: ObjectId("60b64e670858adc14e5ce6cf")
})

db.teachers.insertMany([
  {name: 'Sussman', class: 'English', gender: 'female', homework: false},
  {name: 'Sanchez', class: 'Social Studies', gender: 'female', homework: true},
  {name: 'Cooper', class: 'Gym', gender: 'male', homework: false},
])

db.teachers.insertMany([
  {name: 'Abraham', class: 'Art', gender: 'female', homework: false},
  {name: 'Dean', class: 'Music', gender: 'female', homework: true},
  {name: 'Wayne', class: 'English', gender: 'female', homework: true},
])

<!-- Find all female teachers -->
db.teachers.find( {gender: 'female'} )

<!-- Fine 1 female teacher -->
db.teachers.find( {gender: 'female'} ).limit(1)

<!-- Logical OR -->
db.teachers.find({$or: [ {class: 'English'}, { name: 'Cooper'} ] })