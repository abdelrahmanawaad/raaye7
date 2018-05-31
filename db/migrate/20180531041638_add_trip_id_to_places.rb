class AddTripIdToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places , :trip_id ,:integer
  end
end
