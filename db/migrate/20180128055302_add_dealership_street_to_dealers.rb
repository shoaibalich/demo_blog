class AddDealershipStreetToDealers < ActiveRecord::Migration[5.1]
  def change
    add_column :dealers, :dealership_street, :string
  end
end
