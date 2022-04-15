class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.integer :price
      t.string :price_currency
      t.string :photo_url
      t.belongs_to :vehicle_maker
      t.integer :range
      t.string :range_unit


      t.timestamps
    end
  end
end
