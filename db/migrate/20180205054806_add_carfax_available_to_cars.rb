class AddCarfaxAvailableToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :carfax_available, :boolean
  end
end
