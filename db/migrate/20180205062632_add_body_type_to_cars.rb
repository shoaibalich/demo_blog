class AddBodyTypeToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :body_type, :string
  end
end
