class AddDealershipZipToDealers < ActiveRecord::Migration[5.1]
  def change
    add_column :dealers, :dealership_zip, :int
  end
end
