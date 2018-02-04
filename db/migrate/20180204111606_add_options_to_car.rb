class AddOptionsToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :options, :string
  end
end
