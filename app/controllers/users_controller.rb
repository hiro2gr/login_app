# ユーザー登録用
class UsersController < ApplicationController
  
  def login_form
  end

  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:id] = @user.id
      flash[:notice] ="ログインしました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/login_form")
    end
  end

  def signup
    
  end

  def show
    @user = User.find(params[:id])
  end

  def logout
    session[:id] = nil
    redirect_to("/")
  end
end
