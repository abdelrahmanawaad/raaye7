class AddUserIdToPickups < ActiveRecord::Migration[5.1]
  def change
    add_column :pickups, :user_id, :integer

  end
end
