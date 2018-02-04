class AddPowerOptionsToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :power_options, :string
  end
end
