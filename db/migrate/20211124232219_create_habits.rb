class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.string :description
      t.string :plus
      t.string :minus
      t.integer :level
      t.string :color

      t.timestamps
    end
  end
end
