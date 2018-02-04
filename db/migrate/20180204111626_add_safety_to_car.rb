class AddSafetyToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :safety, :string
  end
end
