class AddVehicleSizeToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :vehicle_size, :string
  end
end
