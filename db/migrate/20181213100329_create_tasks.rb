class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :task_type
      t.integer :task_quantity
      t.integer :each_task_length

      t.timestamps
    end
  end
end
