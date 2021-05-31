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

db.students.update({
  grade: { $exists: true }}, 
  $rename: {grade: 'gpa'},
  {multi: true}
)
