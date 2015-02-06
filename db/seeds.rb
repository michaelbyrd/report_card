# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Michael Byrd', email: 'michael@gmail.com', password: 'password') # id = 1
Student.create(user_id: 1, teacher_id: 1) # id = 1

User.create(name: 'Mason Matthews', email: 'mason@gmail.com', password: 'password') # id = 2
Teacher.create(user_id: 2) # id = 1

Assignment.create( due_at: DateTime.new + 2.day, visable: true, name: "Battleship", description: "Battleship with a test sweet suitse", teacher_id: 1)
Assignment.create( due_at: DateTime.new + 3.day, visable: true, name: "Currency", description: "Currency assignment", teacher_id: 1)

