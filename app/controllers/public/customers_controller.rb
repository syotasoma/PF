class Public::CustomersController < ApplicationController
  before_action :check_guest, only: [:edit, :update, :unsubscribe, :withdrawal]
  def show
    @customer = current_customer
  end
  def edit
    @customer = Customer.find(params[:id])
  end
  def update
    @customer =Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customer_path(@customer)
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
  private
  def customer_params
    params.require(:customer).permit(:last_name,:first_name,:last_name_kana,:first_name_kana,:email)
  end
  
  def check_guest
    if current_customer.email == "guest@example.com"
      redirect_to root_path, notice: "ゲストには許可されていません"
      return
    end
  end
end 

  