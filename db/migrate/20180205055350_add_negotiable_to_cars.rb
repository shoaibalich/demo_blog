class AddNegotiableToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :negotiable, :integer
  end
end
