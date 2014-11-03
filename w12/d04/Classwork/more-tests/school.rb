require "pry"

class School

	def initialize
		@students = {}
	end

	def to_hash
		array = []
		@students.each{|key, value| array[key] = value}
		output = {}
		array.each_with_index{|kids, index| output[index] = kids if kids != nil}
		return output
	end

	def add(name, grade)
		if @students[grade]
			@students[grade] << name
			@students[grade].sort!
		else
			@students[grade] = [name]
		end
	end

	def grade(num)
		if @students[num]
			@students[num]
		else
			[]
		end
	end

end