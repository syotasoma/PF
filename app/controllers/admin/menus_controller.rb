class Admin::MenusController < ApplicationController
  def index
    @menus = Menu.page(params[:page])
  end 
  
  def show
    @menus = Menu.all
  end 
  
  def edit
    @menu = Menu.find(params[:id])
  end
  
  def update
    @menu = Menu.find(params[:id])
    if @menu.update(manu_params)
      redirect_to admin_menu_path
    else
      render :edit
    end
  end
  def destroy
   menu = Menu.find(params:id)
   menu.destroy
   redirect_to admin_menu_index_path
  end
 private
 def menu_params
   params.require(:menu).permit(:comment)
 end 
end
