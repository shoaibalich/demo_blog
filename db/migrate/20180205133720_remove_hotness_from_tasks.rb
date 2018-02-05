class RemoveHotnessFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :hotness, :integer
  end
end
