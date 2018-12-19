class ChangeBreaksIntervalToIntegerInQuestionnaires < ActiveRecord::Migration[5.2]
  def change
    change_column :questionnaires, :breaks_interval, 'integer USING CAST(breaks_interval AS integer)' 
  end
end
