class AddSoldToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :sold, :boolean
  end
end
