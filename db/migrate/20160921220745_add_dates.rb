class AddDates < ActiveRecord::Migration[5.0]
  def change
    add_column(:exercises, :day, :date)
    add_column(:foods, :day, :date)
  end
end
