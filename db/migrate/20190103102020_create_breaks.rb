class CreateBreaks < ActiveRecord::Migration[5.2]
  def change
    create_table :breaks do |t|
      t.integer :user_id
      t.integer :start
      t.integer :end
      t.date :the_date
      t.boolean :completed
      t.timestamps 
    end
  end
end
