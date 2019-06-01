class AddTripsToLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :trip, foreign_key: true
  end
end
