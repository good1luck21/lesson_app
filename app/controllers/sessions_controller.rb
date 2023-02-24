class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(name: params[:name].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end
  
  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
