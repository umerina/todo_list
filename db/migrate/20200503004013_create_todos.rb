class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.text :task
      t.text :priority
      t.date :limit_date
      t.text :state
      t.timestamps
    end
  end
end
