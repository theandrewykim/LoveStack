class SessionsController < ApplicationController

	skip_before_action :logged_in?


	def new
		render '/sessions/new'
	end


	def create
		binding.pry
		#difficulty finding user by email, params doesn't bring in the whole e-mail address
		
		@user = User.find_by(email: params[:email])

		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
		else
			flash[:notice] = "Please Try Again"
			render '/sessions/new'
		end

	end


	def destroy
		session.clear
		redirect_to '/'
	end



end
