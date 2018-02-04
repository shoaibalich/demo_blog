class AddDriveTypeToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :drive_type, :string
  end
end
