class CreateOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :offices do |t|
      t.string :Designation
      t.string :OfficeNo
      t.string :Status
      t.integer :bhk
      t.string :FID

      t.timestamps
    end
  end
end
