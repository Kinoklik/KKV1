class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :reset_password_token
      t.string :encrypted_password
      t.string :name
      t.string :phone
      t.string :subscription
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.boolean :is_filmmaker
      t.boolean :is_affiliate
      t.text :biography

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
