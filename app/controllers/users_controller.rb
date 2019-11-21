class UsersController < ApplicationController
 

  def login_form

  end

  def Login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      flash[:notice] = "ログインしました"
      redirect_to("/show")
    else
      render("/login")
    end
  end

  def signup
    
  end

  def create 
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    @user.save
    redirect_to("/index")
  end

  def index
    @user = User.find_by(id: params[:id])

  end


end
