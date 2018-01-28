class AddDealershipNameToDealers < ActiveRecord::Migration[5.1]
  def change
    add_column :dealers, :dealership_name, :string
  end
end
