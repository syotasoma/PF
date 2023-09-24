class Public::SearchsController < ApplicationController
  def index
    # binding.pry
    @menus = Menu.where("menu_name LIKE?", "%#{params[:search]}%")
  end
end
 