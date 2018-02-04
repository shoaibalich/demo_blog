class AddFuelTypeToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :fuel_type, :string
  end
end
