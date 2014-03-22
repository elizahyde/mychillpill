class CreateDrawings < ActiveRecord::Migration
  def change
    create_table :drawings do |t|
      t.string :image_url
      t.datetime :timestamp

      t.timestamps
    end
  end
end
