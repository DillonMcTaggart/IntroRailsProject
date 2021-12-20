class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :year
      t.integer :rank
      t.text :genre
      t.string :sales
      t.string :decimal
      t.references :publisher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
