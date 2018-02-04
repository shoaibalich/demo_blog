class AddTitleStatusToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :title_status, :string
  end
end
