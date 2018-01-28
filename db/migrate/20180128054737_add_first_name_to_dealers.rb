class AddFirstNameToDealers < ActiveRecord::Migration[5.1]
  def change
    add_column :dealers, :first_name, :string
  end
end
