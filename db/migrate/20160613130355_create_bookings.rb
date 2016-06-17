class CreateVisitsToilets < ActiveRecord::Migration
  def change
    create_table :visits_toilets do |t|
      t.references :visits, index: true, foreign_key: true
      t.references :toilet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
