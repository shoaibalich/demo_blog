class AddDriveSideToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :drive_side, :string
  end
end
