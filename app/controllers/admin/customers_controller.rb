class Admin::CustomersController < ApplicationController
  def index
    @customers = Customers.all
  end 
  
  def show
    @customer = Customers.find(params[:id])
  end 
  
  def edit
    @customer = Customers.find(params[:id])
  end 
  
  def update
    @customer = Customers.find(params[:id])
    @customer.update(customer_params)
    redirect_to admin_customer_path
  end 
  
  def withdrawal
    @customer = Customer.find(params[:id])
    @customer.update(is_deleted: true)
    reset_session
    redirect_to admin_customers_path
  end 
  
 private
 def customer_params
   params.require(:customer).permit(:is_deleted)
 end 
end
