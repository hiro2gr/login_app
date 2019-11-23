# ユーザー登録用
class UsersController < ApplicationController
  
  def login_form

  end

  def login
    
    @user = User.find_by(
      email: params[:email], 
      password: params[:password]
    )
    if @user
      session[:user_id] = user.id
      flash[:notice] = "ログインしました"
      redirect_to("index")
    else
      render("users/login_form")
    end
  end

  def signup
    
  end
end
