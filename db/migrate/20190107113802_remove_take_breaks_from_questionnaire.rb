class RemoveTakeBreaksFromQuestionnaire < ActiveRecord::Migration[5.2]
  def change
    remove_column :questionnaires, :take_breaks, :boolean
  end
end
