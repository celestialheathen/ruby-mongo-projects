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