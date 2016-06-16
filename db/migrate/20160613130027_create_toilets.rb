class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.integer :price
      t.string :cover
      t.string :cleanliness

      t.timestamps null: false
    end
  end
end
