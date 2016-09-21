class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.column :name, :string
      t.column :calories_in, :integer
      t.column :serving_size, :integer
    end
  end
end
