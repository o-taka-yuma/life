class CreateActionRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :action_records do |t|

      t.date    :recordDay,            null: false
      t.integer :sleep,                null: false
      t.integer :work,                 null: false
      t.integer :takeBreak,            null: false
      t.integer :effort,               null: false
      t.integer :challenge,            null: false
      t.integer :chores,               null: false
      t.integer :total,                null: false
      t.text :comment
      t.references :user,   foreign_key: true

      t.timestamps
    end
  end
end
