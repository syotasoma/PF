class Public::NicesController < ApplicationController
  before_action :set_customer, only: [:nice]
  
  def index
    @customer = Customer.find(params[:id])
    nices = Nice.where(customer_id: @customer.id).pluck(:menu_id)
    @nices = Nice.find(nices)
  end 
  def create
   @menu = Menu.find(params[:menu_id])
   nice = current_customer.nices.new(menu_id: @menu.id)
   nice.save
   redirect_to menu_path(params[:menu_id])
  end 
  def destroy
    @menu = Menu.find(params[:menu_id])
    nice = current_customer.nices.find_by(menu_id: @menu.id)
    nice.destroy
    redirect_to menu_path(params[:menu_id])
  end 
end
