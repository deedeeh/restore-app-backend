class ChangeTheDateToBeStringInBreaks < ActiveRecord::Migration[5.2]
  def change
    change_column :breaks, :the_date, :string
  end
end
