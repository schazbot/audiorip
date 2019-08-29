class SessionsController < ApplicationController
	def new
		# nothing to do here!
	end

	def create
		username = params[:session][:username]
		user = User.find_by(username: username)
		if user.valid?
			session[:user_id] = user.id
			redirect_to user_path(user.id)
		else 
		redirect_to '/login'
		end
	end


	def destroy
		reset_session
		redirect_to login_path
	end

end