class ApplicationController < ActionController::Base
  before_filter :current_user

  protected
    def current_user
      @user = User.find(session[:id]) if @user.nil? && session[:id]
    # redirect_to(new_user_path) unless current_user
    end
  end 
  #   def login_required
  #     return true if @user
  #     access_denied
  #     return false
  #   end
  # end
  #
  #
  #   def access_denied
  #     session[:return_to] = request.request_url
  #     flash[:error] = 'Ooops! lets login first.'
  #     redirect_to :conroller => 'user', :action => 'login'
  #   end



  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # helper_method :current_user;
