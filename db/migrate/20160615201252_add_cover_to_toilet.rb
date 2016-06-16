class AddCoverToToilet < ActiveRecord::Migration
  def change
    add_column :toilets, :cover, :string
  end
end
