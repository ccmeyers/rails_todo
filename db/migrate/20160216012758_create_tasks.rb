class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :body
      t.boolean :completed, :default => false
      t.integer :priority

      t.timestamps null: false
    end
  end
end
