class StudentsController < ApplicationController

	def show
		student = Student.find(params[:id])
		render :json => student
	end

	def update
		if ApiKey.exists?(api_key: params[:api_key])
			student = Student.find(params[:id])
			student.points += params[:points].to_i
			student.save
			render :json => student
		else
			render :html => "Resubmit with Api_Keyicus Validomorra"
		end
	end

	def create
		if ApiKey.exists?(api_key: params[:api_key])
			student = Student.create({name: params[:name], house_id: params[:id], points: 0})
			render :json => student
		else
			render :html => "Resubmit with Api_Keyicus Validomorra"
		end
	end


end