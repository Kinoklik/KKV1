class CreateMovieActors < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_actors do |t|
      t.bigint :actor_id
      t.bigint :movie_id

      t.timestamps
    end
    add_index :movie_actors, :actor_id
    add_index :movie_actors, :movie_id
  end
end
