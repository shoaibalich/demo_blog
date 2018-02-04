class AddSubModelToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :sub_model, :string
  end
end
