class Public::SearchsController < ApplicationController
  def index
    # binding.pry
    
    @menus = Menu.where("menu_name LIKE?", "%#{params[:search]}%").where("menu_name LIKE?", "%#{params[:search]}%").page(params[:page])
  end
end
 