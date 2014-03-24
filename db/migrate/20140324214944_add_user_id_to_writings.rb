class AddUserIdToWritings < ActiveRecord::Migration
  def change
    add_reference :writings, :user, index: true
  end
end
