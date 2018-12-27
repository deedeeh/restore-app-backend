class AddTargetQuantityToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :target_quantity, :integer
  end
end
