class AddImageToToilets < ActiveRecord::Migration
  def change
    add_column :toilets, :image, :string
  end
end
