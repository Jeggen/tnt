class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.decimal :price
      t.string :cover
      t.string :cleanliness

      t.timestamps null: false
    end
  end
end
