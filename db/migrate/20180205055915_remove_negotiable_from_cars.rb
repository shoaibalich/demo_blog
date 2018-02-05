class RemoveNegotiableFromCars < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :negotiable, :integer
  end
end
