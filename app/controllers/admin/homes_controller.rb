class Admin::HomesController < ApplicationController
def top
  @menu = Menu.page(params[:page])
end 
end
