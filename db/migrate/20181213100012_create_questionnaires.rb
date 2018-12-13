class CreateQuestionnaires < ActiveRecord::Migration[5.2]
  def change
    create_table :questionnaires do |t|
      t.integer :user_id
      t.string :job_title
      t.string :work_hours
      t.boolean :breaks
      t.integer :breaks_quantity
      t.integer :break_length

      t.timestamps
    end
  end
end
