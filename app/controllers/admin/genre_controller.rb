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
  
  def edit
    @genre = Genre.find(genre_params)
  end 
  
  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to admin_genre_index_path
    else
    ender :edit
    end
  end 
  def destroy
    genre = Genre.find(params[:id])
    genre.destroy
    redirect_to admin_genre_index_path
  end 
  
  private
  def genre_params
    params.reqire(:genre).permit(:genre_id)
  end 
end
