class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
