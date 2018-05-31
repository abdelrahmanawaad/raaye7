class CreatePickups < ActiveRecord::Migration[5.1]
  def change
    create_table :pickups do |t|
      t.string :source
      t.string :destination
      t.datetime :departure_time
      t.timestamps

    end
  end
end
