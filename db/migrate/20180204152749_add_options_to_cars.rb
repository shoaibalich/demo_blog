class AddOptionsToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :options, :text
  end
end
