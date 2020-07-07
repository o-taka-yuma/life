class CreateTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :targets do |t|
      t.text :life_goal
      t.text :dream 
      t.text :achivement_taget

      t.references :user,     foreign_key: true
    end
  end
end
