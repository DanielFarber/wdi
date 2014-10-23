class HogwartsController < ApplicationController

	def show
		render :json => Hogwart.first.points
	end


end