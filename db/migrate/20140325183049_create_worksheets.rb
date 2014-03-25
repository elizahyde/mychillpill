class CreateWorksheets < ActiveRecord::Migration
  def change
    create_table :worksheets do |t|
      t.string :name
      t.text :text_answer1
      t.text :text_answer2
      t.text :text_answer3
      t.text :text_answer4
      t.text :text_answer5
      t.text :text_answer6
      t.text :text_answer7
      t.integer :integer_answer1
      t.integer :integer_answer2
      t.date :date
      t.references :user, index: true

      t.timestamps
    end
  end
end
