class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.datetime :due_at
      t.boolean :visable
      t.string :name
      t.text :description
      t.integer :teacher_id

      t.timestamps null: false
    end
  end
end
