class Public::MenusController < ApplicationController
  def index 
    @menus = Menu.page(params[:page])
  end 
  def show
    @menu = Menu.find(params[:id])
    @customer = @menu.customer
    @comment = Comment.new
    @comments = @menu.comments.page(params[:page]).per(2)
    respond_to do |format|
      format.html
      format.js
    end
  end
  def edit
   @menu = Menu.find(params[:id])
   @customer = Customer.find(params[:id])
  end 
  def new
   @menu = Menu.new
  end 
  def create
    @menu = Menu.new(menu_params.merge(:customer_id => 1))
    if @menu.save
      redirect_to menu_path(@menu.id)
    end 
  end 
  def update
    @menu = Menu.find(params[:id])
    if @menu.update(menu_params)
      redirect_to menu_path(@menu.id)
    else
      render :edit
    end 
  end 
  def destroy
    menu = Menu.find(params[:id])
    menu.destroy
    redirect_to "/menus"
  end
  
  
  private
  def menu_params
  params.require(:menu).permit( :menu_name, :menu_introduction, :difficulty, :genre_id, :comment, :menu_image)
  end
end
