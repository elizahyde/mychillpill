class EditPromptColumnsWritings < ActiveRecord::Migration
  def change
    add_column :writings, :question, :text
    remove_column :writings, :prompt_id, :reference
  end
end
