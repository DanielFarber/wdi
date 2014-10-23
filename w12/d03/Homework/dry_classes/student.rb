class Student

	def initialize(name)
		@name = name
		@points = 0
	end

	def name
		@name
	end

	def points
		@points
	end

	def award_points(num)
		@points += num
		@points
	end

end
