class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
<<<<<<< HEAD
      t.references :user, index: true, foreign_key: true
      t.integer :price
=======
      t.decimal :price
>>>>>>> e2b88248311be93d2a43d58ad0b82c701c719255
      t.string :cover
      t.string :cleanliness

      t.timestamps null: false
    end
  end
end
