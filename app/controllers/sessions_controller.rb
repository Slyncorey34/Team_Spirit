class SessionsController < ApplicationController
	def new
	end

	def create
		@user=User.where(username: params[:username]).first
		if @user && @user.password == params[:password]
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			redirect_to root_path
		end
	end

	def destroy
		session[:user_id] = nil
	end
end

