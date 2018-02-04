class AddExteriorColorToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :exterior_color, :string
  end
end
