class AddPromptToDrawings < ActiveRecord::Migration
  def change
    add_reference :drawings, :prompt, index: true
  end
end
