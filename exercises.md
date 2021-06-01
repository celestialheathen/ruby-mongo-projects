db.teachers.insert({
  name: 'Mace',
  class: 'History',
  gender: 'male',
  homework: true
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

# Search by comparison $eq
db.teachers.find( {class: {$eq: 'Art'} })
