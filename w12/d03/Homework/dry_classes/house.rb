class House

	def initialize(name)
		@name = name
		@students = []
	end

	def name
		@name
	end

	def students
		@students
	end

	def add_student(target)
		@students << target
	end

	def get_student(target)
		output = nil
		@students.each do |student|
			if student.name == target
				output = student
			end
		end
		output
	end

	def house_totals
		total = 0
		@students.each{ |student| total += student.points}
		total
	end


end