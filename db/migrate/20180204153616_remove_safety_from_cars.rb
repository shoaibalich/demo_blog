class RemoveSafetyFromCars < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :safety, :string
  end
end
