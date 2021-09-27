class CreateFilmRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :film_roles do |t|
      t.bigint :movie_id
      t.bigint :user_id
      t.string :role

      t.timestamps
    end
    add_index :film_roles, :movie_id
    add_index :film_roles, :user_id
  end
end
