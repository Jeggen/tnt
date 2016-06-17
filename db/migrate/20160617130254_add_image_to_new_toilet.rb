class AddImageToNewToilet < ActiveRecord::Migration
  def change
    add_column :new_toilets, :image, :string
  end
end
