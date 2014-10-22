class SongsController < ApplicationController

	def show
		user = User.find(session[:user_id])
		render(:index, { locals: {user: user, likes: user.likes} })
	end

	def destroy
		song = Song.find(params[:id])
		song.destroy
		render :json => song
	end

	def create
		song = Song.create({name: params[:name]})
		render :json => song
	end

	def like_create
		like = Like.create({user_id: params[:user_id], song_id: params[:song_id]})
		render :json => like
	end

	def like_get
		user = User.find(params[:id])
		render :json => user.likes
	end

end