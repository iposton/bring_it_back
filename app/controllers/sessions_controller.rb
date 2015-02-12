class SessionsController < ApplicationController
	 def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user      
      redirect_to home_path
    else
      flash[:danger] = "Failed to log in"
      redirect_to root_path
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
