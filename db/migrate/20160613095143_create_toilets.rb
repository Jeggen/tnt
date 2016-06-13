class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.string :location
      t.string :cleanliness
      t.string :price

      t.timestamps null: false
    end
  end
end
