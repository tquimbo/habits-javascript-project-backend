class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :point
      t.string :complete

      t.timestamps
    end
  end
end
