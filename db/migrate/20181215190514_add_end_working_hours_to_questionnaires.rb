class AddEndWorkingHoursToQuestionnaires < ActiveRecord::Migration[5.2]
  def change
    add_column :questionnaires, :working_hours_to, :string
  end
end
