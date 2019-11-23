# rootのページ設定用
class HomeController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
  end
end
