class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
  end
  def edit
    @customers = Costomer.find(params[:id])
  end
  def update
    @customers =Customer.find(params[:id])
    if @customers.update(customers_params)
      redirect_to customer_path(@customers.id)
    else 
      render :edit
    end
  end
  def unsubscribe
  end
  def withdrawal
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end
end 

private
def customer_params
  params.require(:customer).permit(:last_name,:first_name,:last_name_kana,:first_name_kana,:email)
end