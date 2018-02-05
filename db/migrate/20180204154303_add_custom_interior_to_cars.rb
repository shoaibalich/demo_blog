class AddCustomInteriorToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :custom_interior, :string
  end
end
