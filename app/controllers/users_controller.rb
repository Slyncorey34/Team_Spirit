class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def create
	
		@user = User.new(user_params)
		if @user.save
		session[:user_id] = @user.id
	
			redirect_to @user
		else
			redirect_to new_user_path
		end
	end

	# def current_user
	# end

	def show
		@user=User.find(params[:id])
		@posts = Post.all
		# @posts = Post.each
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
		 redirect_to user_path
		else
		 redirect_to edit_user_path(@user)
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.delete
		redirect_to users_path

 	end

	def user_params
		params.require(:user).permit(:username, :password, :email)
	end
end
