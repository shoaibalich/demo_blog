class AddInteriorColorToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :interior_color, :string
  end
end
