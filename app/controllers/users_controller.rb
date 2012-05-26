class UsersController < ApplicationController
  def new
    @title = "Sign up"
  end

  def show
    @user = User.find(params[:id])
    @user_wishes = @user.wishes
  end

   def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, :notice => 'Wish was successfully created.' }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

end
