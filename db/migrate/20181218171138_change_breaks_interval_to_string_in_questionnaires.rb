class ChangeBreaksIntervalToStringInQuestionnaires < ActiveRecord::Migration[5.2]
  def change
    change_column :questionnaires, :breaks_interval, :string
  end
end
