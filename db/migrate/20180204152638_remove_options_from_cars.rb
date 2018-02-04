class RemoveOptionsFromCars < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :options, :string
  end
end
