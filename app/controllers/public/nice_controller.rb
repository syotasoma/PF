class Public::NiceController < ApplicationController
  before_action :set_user, only: [:nice]
  
  def index
    @customer = Customer.find(params[:id])
    nices =Nice.where(customer_id: @customer.id).pluck(:menu_id)
    @nices = Nice.find(nices)
  end 
  def create
   
end
