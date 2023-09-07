class Public::NiceController < ApplicationController
  def index
    @menu = Menu.all
  end 
end
