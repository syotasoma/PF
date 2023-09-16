class Public::NiceController < ApplicationController
  before_action :set_user, only: [:nice]
  
  def index
    @customer = Customer.find(params[:id])
    nices =Nice.where(customer_id: @customer.id).pluck(:menu_id)
    @nices = Nice.find(nices)
  end 
  def create
   nice = Nice.find(params[:nice_id])
   nice = current_user.nices.new(nice_id: nice.id)
   nice.save
   redirect_to menu_path(params[:nice_id])
  end 
  def destroy
    nice = Nice.fiind(params[:nice_id])
    nice = current_user.nices.find_by(nice_id: nice.id)
    nice.destroy
    redirect_to menu_path(params[:nice_id])
  end 
end
