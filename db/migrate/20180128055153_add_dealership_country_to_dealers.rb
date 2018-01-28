class AddDealershipCountryToDealers < ActiveRecord::Migration[5.1]
  def change
    add_column :dealers, :dealership_country, :string
  end
end
