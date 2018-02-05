class AddCustomExteriorToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :custom_exterior, :string
  end
end
