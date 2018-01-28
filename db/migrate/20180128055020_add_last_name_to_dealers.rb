class AddLastNameToDealers < ActiveRecord::Migration[5.1]
  def change
    add_column :dealers, :last_name, :string
  end
end
