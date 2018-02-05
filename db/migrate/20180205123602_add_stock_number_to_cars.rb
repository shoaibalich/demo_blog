class AddStockNumberToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :stock_number, :integer
  end
end
