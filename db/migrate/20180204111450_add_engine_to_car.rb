class AddEngineToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :engine, :string
  end
end
