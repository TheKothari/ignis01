class CreateOtherBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :other_buildings do |t|
      t.string :Breakroom
      t.string :TelephoneRoom
      t.string :Restroom
      t.string :FID

      t.timestamps
    end
  end
end
