class ApplicationController < ActionController::Base
  before_filter :set_user

  protected
    def set_user
      @user = User.find(session[:id]) if @user.nil? && session[:id]
    end

    def login_required
      return true if @user
      access_denied
      return false
    end
  end


    def access_denied
      session[:return_to] = request.request_url
      flash[:error] = 'Ooops! lets login first.'
      redirect_to :conroller => 'user', :action => 'login'
    end



  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # helper_method :current_user; 
