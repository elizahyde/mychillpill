class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
