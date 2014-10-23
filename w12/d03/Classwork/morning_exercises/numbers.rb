class Numbers

	def self.sort(array)
		i = 0
		output, shunt, negative, negative_shunt, negative_prod = [], [], [], [], []
		array.each do |val|
			if val < 0
				negative << val
			elsif output[val]
				shunt << val
			else
				output[val] = val
			end
		end

		output = output.compact

		unless shunt == []
			shunt.each do |number|
				index = output.index(number)
				output.insert(index, number)
			end
		end

		negative.each do |val|
			if negative_prod[val.abs]
				negative_shunt << val
			else
				negative_prod[val.abs] = val
			end
		end

		negative_prod = negative_prod.compact

		unless negative_shunt == []
			negative_shunt.each do |val|
				index = negative_prod.index(val)
				negative_prod.insert(index, val)
			end
		end

		negative_prod.each do |val|
			output.insert(0, val)
		end

		return output

	end

	def self.reverse(array)
		i = array.length - 1
		output = Array.new
		while i > -1
			output << array[i]
			i -= 1
		end
		return output
	end

	def self.reverse_sort(array)
		shunt = self.sort(array)
		output = self.reverse(shunt)
		return output
	end


end

puts Numbers.sort([9,5,1,0,5,3,8, -3, -5, -5, 2, -21, 24])