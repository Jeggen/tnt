class AddNameToToilets < ActiveRecord::Migration
  def change
    add_column :toilets, :name, :string
  end
end
