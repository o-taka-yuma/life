class CreateMains < ActiveRecord::Migration[5.2]
  def change
    create_table :mains do |t|
      t.time :sleep,                null: false
      t.time :work,                 null: false
      t.time :effort,               null: false
      t.time :takeBreak
      t.time :challenge
      t.time :chores

      t.references :user,   foreign_key: true

      t.timestamps
    end
  end
end
