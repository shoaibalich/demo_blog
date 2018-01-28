class AddDealershipCityToDealers < ActiveRecord::Migration[5.1]
  def change
    add_column :dealers, :dealership_city, :string
  end
end
