class CreateNewToilets < ActiveRecord::Migration
  def change
    create_table :new_toilets do |t|
      t.string :name
      t.integer :price
      t.string :cleanliness
      t.string :string

      t.timestamps null: false
    end
  end
end
