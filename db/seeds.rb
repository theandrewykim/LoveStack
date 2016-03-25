# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(email:"bigbog@bob.com", password:"password")
User.create(email:"littlebob@bob.com", password:"password")
User.create(email:"testuser@bob.com", password:"password")

Tag.create(name:"Ruby")
Tag.create(name:"JavaScript")
Tag.create(name:"Life")


Question.create(title: "How do I make a class", content:"how can you make a ruby class?", user_id:1)
Question.create(title: "What is Ruby", content:"What is this Ruby Stuff?", user_id:1)


# Response.create(content:"You're a Noob", user_id: 2, responsible_id: 2)
# Response.create(content:"Go away", user_id: 3)

# Answer.create(question_id:2, content:"It's a programming language", user_id:3)

Answer.create(question_id: 2, content:"a programming language", user_id: 3, best: false)