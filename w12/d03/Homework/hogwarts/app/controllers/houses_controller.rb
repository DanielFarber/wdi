class HousesController < ApplicationController

	def show
		house = House.find(params[:id])
		render :json => house.points
	end


end