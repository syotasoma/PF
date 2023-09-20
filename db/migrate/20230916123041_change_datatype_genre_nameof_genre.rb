class ChangeDatatypeGenreNameofGenre < ActiveRecord::Migration[6.1]
  def change
    change_column :genres, :genre_name, :string
  end
end
