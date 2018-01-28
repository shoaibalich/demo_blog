class AddDealershipStateToDealers < ActiveRecord::Migration[5.1]
  def change
    add_column :dealers, :dealership_state, :string
  end
end
