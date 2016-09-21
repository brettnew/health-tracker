class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.column :name, :string
      t.column :calories_out, :integer
      t.column :duration, :integer
    end

    create_table :foods_users do |t|
      t.column :food_id, :integer
      t.column :user_id, :integer

      t.timestamps
    end

    create_table :exercises_users do |t|
      t.column :exercise_id, :integer
      t.column :user_id, :integer

      t.timestamps
    end

    add_column(:users, :weight, :integer)
    add_column(:users, :age, :integer)
  end
end
