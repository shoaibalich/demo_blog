class AddDisabilityEquippedToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :disability_equipped, :boolean
  end
end
