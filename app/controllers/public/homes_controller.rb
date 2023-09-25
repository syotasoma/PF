class Public::HomesController < ApplicationController
  def top
    @genre = Genre.all
  end 
  
  def about
  end
  
  def about2
  end
  
  def new_guest
    customer = customer.find_or_create_by(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
  end 
  sing_in customer
  redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
