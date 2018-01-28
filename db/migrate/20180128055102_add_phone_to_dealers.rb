class AddPhoneToDealers < ActiveRecord::Migration[5.1]
  def change
    add_column :dealers, :phone, :string
  end
end
