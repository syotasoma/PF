class Admin::GenreController < ApplicationController
  def index
    @genres = Genre.all
    @genre = Genre.new
  end 
  
  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to admin_genre_index_path
    end
  end 
  
  def destroy
    genre = Genre.find(params[:id])
    genre.destroy
    redirect_to admin_genre_index_path
  end 
  
  private
  def genre_params
    params.require(:genre).permit(:genre_name)
  end 
end
