class ChangeBreaksToTakeBreaks < ActiveRecord::Migration[5.2]
  def change
    rename_column :questionnaires, :breaks, :take_breaks
    rename_column :questionnaires, :work_hours, :working_hours_from
  end
end
