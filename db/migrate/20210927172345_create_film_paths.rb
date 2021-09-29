class CreateFilmPaths < ActiveRecord::Migration[6.1]
  def change
    create_table :film_paths do |t|
      t.bigint :movie_id
      t.string :type

      t.timestamps
    end
    add_index :film_paths, :movie_id
  end
end
