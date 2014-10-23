class Hogwarts

	def initialize
		@houses = []
	end

	def add_house(house)
		@houses << house
	end

	def house_totals
		totals = {}
		@houses.each{ |house| totals[house.name] = house.house_totals }
		totals
	end

end