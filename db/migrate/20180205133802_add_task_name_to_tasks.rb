class AddTaskNameToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :task_name, :string
  end
end
