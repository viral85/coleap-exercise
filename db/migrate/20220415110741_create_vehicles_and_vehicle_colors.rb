class CreateVehiclesAndVehicleColors < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicle_colors_vehicles, id: false do |t|
      t.belongs_to :vehicle_color
      t.belongs_to :vehicle
    end
  end
end
