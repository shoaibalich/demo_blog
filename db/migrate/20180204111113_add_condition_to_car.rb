class AddConditionToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :condition, :string
  end
end
