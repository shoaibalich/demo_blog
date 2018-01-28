class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :vin
      t.string :make
      t.string :model
      t.integer :year
      t.decimal :price
      t.references :dealer, foreign_key: true

      t.timestamps
    end
  end
end
