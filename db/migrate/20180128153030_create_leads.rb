class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
