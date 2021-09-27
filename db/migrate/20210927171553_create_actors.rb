class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.text :biography
      t.bigint :user_id

      t.timestamps
    end
    add_index :actors, :user_id
  end
end
