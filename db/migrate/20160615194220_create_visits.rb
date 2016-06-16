class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.references :user, index: true, foreign_key: true
      t.references :toilet, index: true, foreign_key: true
      t.integer :stars
      t.string :comment

      t.timestamps null: false
    end
  end
end
