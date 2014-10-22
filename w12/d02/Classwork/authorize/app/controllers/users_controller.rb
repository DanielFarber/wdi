class UsersController < ApplicationController



	def sign_in
		render(:sign_in)
	end

	def secret
		user = User.find_by( {email: params[:email]} )
		binding.pry
		if session[:user] || user.authenticate(params[:password])
			session[:user] = user.id if !session[:user]
			render(:secret)
		else
			redirect_to("/sign_in")
		end
	end



end