class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :language
      t.datetime :release_date

      t.timestamps
    end
  end
end
