class AddUserIdToToilet < ActiveRecord::Migration
  def change
    add_column :toilets, :user_id, :integer
  end
end
