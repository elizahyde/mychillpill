class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|
      t.text :content
      t.references :prompt, index: true

      t.timestamps
    end
  end
end
