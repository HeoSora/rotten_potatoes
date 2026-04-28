class AddRatingToMovies < ActiveRecord::Migration[8.1]
  def change
    add_column :movies, :rating, :string
  end
end
