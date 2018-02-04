class AddCylindersToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :cylinders, :integer
  end
end
