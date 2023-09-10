class Public::HomesController < ApplicationController
  def top
  end 
  def about
  end
  def about2
  end
  
private
  def gunre_params
    params.require(:genre).permit(:gunre_name)
  end
end
