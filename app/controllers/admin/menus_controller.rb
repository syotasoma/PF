class Admin::MenusController < ApplicationController
  def index
    @menus = Menu.page(params[:page])
  end 
  
  def show
    @menus = Menu.all
    @menu = Menu.find(params[:id])
  end 
  
  def destroy
   menu = Menu.find(params[:id])
   menu.destroy
   redirect_to admin_menus_path
  end
 
end
