require "pry"
require_relative "./student"
require_relative "./house"
require_relative "./hogwarts"

harry = Student.new("Harry Potter")

gryffindor = House.new("Gryffindor")

gryffindor.add_student(harry)

harry.award_points(50)

slytherin = House.new("Slytherin")

draco = Student.new("Draco Malfoyle")

draco.award_points(175)

hogwarts = Hogwarts.new

hogwarts.add_house(gryffindor)
hogwarts.add_house(slytherin)







binding.pry