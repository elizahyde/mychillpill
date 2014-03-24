class EditPromptColumnsDrawings < ActiveRecord::Migration
  def change
    add_column :drawings, :question, :text
    remove_column :drawings, :prompt_id, :reference
  end
end
