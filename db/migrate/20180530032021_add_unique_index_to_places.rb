class AddUniqueIndexToPlaces < ActiveRecord::Migration[5.1]
  def change
        add_index :places, [:longitude, :latitude], unique: true
  end
end
