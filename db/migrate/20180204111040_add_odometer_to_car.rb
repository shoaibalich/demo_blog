class AddOdometerToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :odometer, :float
  end
end
