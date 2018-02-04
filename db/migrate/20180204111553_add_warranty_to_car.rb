class AddWarrantyToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :warranty, :string
  end
end
