class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :people
      t.string :stops
      t.string :transportation

      t.timestamps
    end
  end
end
