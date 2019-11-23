# セッション機能用
class SessionsController < ApplicationController
  def create 
    @user = User.new(
      name: params[:name], 
      email: params[:email], 
      password: params[:password]
    )
    @user.save
    redirect_to("/")
  end

  def destroy
  end
end
