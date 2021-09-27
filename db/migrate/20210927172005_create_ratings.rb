class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.bigint :movie_id
      t.bigint :user_id
      t.string :comment
      t.decimal :stars

      t.timestamps
    end
    add_index :ratings, :movie_id
    add_index :ratings, :user_id
  end
end
