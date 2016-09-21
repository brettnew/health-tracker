class DropJoinTables < ActiveRecord::Migration[5.0]
  def change
    drop_table(:exercises_users)

    drop_table(:foods_users)
  end
end
