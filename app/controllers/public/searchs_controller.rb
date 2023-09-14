class Public::SearchsController < ApplicationController
  def index
    @menus = Menu.where("menu_name LIKE?", "%#{word}%")
  end
end
