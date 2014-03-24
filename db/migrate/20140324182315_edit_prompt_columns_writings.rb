class EditPromptColumnsWritings < ActiveRecord::Migration
  def change
    # I initialy had prompt_id on writings table but changed it to the current solution
    # found on writing#index
    add_column :writings, :question, :text
    remove_column :writings, :prompt_id, :reference
  end
end
