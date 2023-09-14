class Public::MenusController < ApplicationController
  def index 
    @menu = Menu.all
  end 
  def show
    @menu = Menu.find(params[:id])
  end 
  def edit
   @menu = Menu.find(params[menu_params])
  end 
  def new
   @menu = Menu.new
  end 
  def create
    if @menu.save
      redirect_to menu_path(@menu.id)
    end 
  end 
  def update
    if @menu.update(menu_params)
      redirect_to manu_path(@menu.id)
    end 
  end 
  def destroy
    menu = Menu.find(params[:id])
    menu.destroy
    redirect_to "/menus"
  end
  
  
  private
  def menu_params
  params.require(:menu).permit(:menu_id, :menu_name, :menu_explanation, :difficulty, :genre, :comment, :image)
  end
end
