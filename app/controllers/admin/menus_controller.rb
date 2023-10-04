class Admin::MenusController < ApplicationController
  def index
    @menus = Menu.page(params[:page])
  end 
  
  def show
    @menus = Menu.all
    @menu = Menu.find(params[:id])
    @comments = @menu.comments.page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
    end
  end 
  
  def destroy
   menu = Menu.find(params[:id])
   menu.destroy
   redirect_to admin_menus_path
  end
 
end
