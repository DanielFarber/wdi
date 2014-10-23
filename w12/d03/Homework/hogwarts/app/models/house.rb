class House < ActiveRecord::Base
	has_many :students
	belongs_to :hogwarts

	def points
		students = Student.where( {house_id: self.id})
		points = 0
		students.each{ |student| points += student.points}
		{self.name => points}
	end

end