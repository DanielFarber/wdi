class Hogwart < ActiveRecord::Base
	has_many :houses

	def points
		houses = House.where( {hogwart_id: self.id} )
		output = []
		houses.each{ |house| output << house.points }
		output
	end

end