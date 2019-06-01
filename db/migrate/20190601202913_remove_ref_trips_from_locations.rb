class RemoveRefTripsFromLocations < ActiveRecord::Migration[5.2]
  def change
    remove_reference :locations, :trips
    remove_foreign_key :locations, :trips
  end
end
