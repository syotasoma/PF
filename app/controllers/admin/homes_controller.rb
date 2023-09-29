class Admin::HomesController < ApplicationController
def top
  @genre = Genre.all
end 
end
