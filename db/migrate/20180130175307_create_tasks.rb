class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :task_type
      t.boolean :open
      t.text :description
      t.integer :hotness
      t.references :lead, foreign_key: true

      t.timestamps
    end
  end
end
