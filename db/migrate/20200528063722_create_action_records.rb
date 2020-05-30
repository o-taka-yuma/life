class CreateActionRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :action_records do |t|

      t.date    :recordDay,            null: false
      t.integer :sleep,                null: false
      t.integer :work,                 null: false
      t.integer :effort,               null: false
      t.integer :takeBreak
      t.integer :challenge
      t.integer :chores

      t.references :user,   foreign_key: true

      t.timestamps
    end
  end
end