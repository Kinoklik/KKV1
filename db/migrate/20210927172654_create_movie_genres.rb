class CreateMovieGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_genres do |t|
      t.bigint :genre_id
      t.bigint :movie_id

      t.timestamps
    end
    add_index :movie_genres, :genre_id
    add_index :movie_genres, :movie_id
  end
end
