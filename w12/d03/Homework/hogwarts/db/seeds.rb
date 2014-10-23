# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hogwarts = Hogwart.create({name: "Hogwarts"})

gryffindor = House.create({ name: "Gryffindor", hogwart_id: hogwarts.id})

slytherin = House.create({ name: "Slytherin", hogwart_id: hogwarts.id})

hufflepuff = House.create({ name: "Hufflepuff", hogwart_id: hogwarts.id})

ravenclaw = House.create({ name: "Ravenclaw", hogwart_id: hogwarts.id})

harry = Student.create({name: "Harry Potter", house_id: gryffindor.id, points: 0})

hermione = Student.create({name: "Hermione Granger", house_id: gryffindor.id, points: 0})

ron = Student.create({name: "Ron Weasley", house_id: gryffindor.id, points: 0})

draco = Student.create({name: "Draco Malfoyle", house_id: slytherin.id, points: 0})

goyle = Student.create({name: "Gregory Goyle", house_id: slytherin.id, points: 0})

luna = Student.create({name: "Lune Lovegood", house_id: hufflepuff.id, points: 0})
