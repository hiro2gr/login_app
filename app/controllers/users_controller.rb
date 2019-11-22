class UsersController < ApplicationController
 

  def login_form

  end

  def Login
    @user = User.find_by(
      email: params[:email], 
      password: params[:password]
    )
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/index")
    else
      render("users/login_form")
    end
  end

  def signup
    
  end

  def create 
    @user = User.new(
      name: params[:name], 
      email: params[:email], 
      password: params[:password]
    )
    @user.save
    redirect_to("/")
  end

  def index
    @user = User.find_by(id: params[:id])

  end


end
