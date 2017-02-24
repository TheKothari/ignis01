class CreateFireStations < ActiveRecord::Migration[5.0]
  def change
    create_table :fire_stations do |t|
      t.string :Name
      t.string :FID
      t.text :Address
      t.integer :Bays
      t.string :Houbli
      t.string :Taluk
      t.string :District
      t.string :Range
      t.string :Zone

      t.timestamps
    end
  end
end
