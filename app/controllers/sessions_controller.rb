class SessionsController < ApplicationController
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil? 
      flash.now[:error] = "Invalid email/password combination." 
      @title = "Sign in" 
      render 'new'
    else
      flash.now[:error] = "User connected" 
      redirect_to user
    end
  end

  def new

  end


end
