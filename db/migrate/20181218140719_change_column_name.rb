class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :questionnaires, :breaks_quantity, :breaks_interval
  end
end
