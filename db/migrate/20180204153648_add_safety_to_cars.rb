class AddSafetyToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :safety, :text
  end
end
