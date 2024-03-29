class Admin::CustomersController < ApplicationController
  # before_action :check_admin, only: [:withdrawal]
  def index
    @customers = Customer.page(params[:page])
  end 
  
  def show
    @customer = Customers.find(params[:id])
  end 
  
  def edit
    @customer = Customer.find(params[:id])
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
 def check_admin
    # if current_admin
    #   redirect_to root_path, notice: "admin以外には許可されていません"
    #   return
    # end
 end
end
