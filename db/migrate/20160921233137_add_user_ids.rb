class AddUserIds < ActiveRecord::Migration[5.0]
  def change

    add_column(:exercises, :user_id, :integer)
    add_column(:foods, :user_id, :integer)
  end
end
