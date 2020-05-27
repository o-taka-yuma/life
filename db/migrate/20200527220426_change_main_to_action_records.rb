class ChangeMainToActionRecords < ActiveRecord::Migration[5.2]
  def change
    rename_table :mains, :action_records
  end
end
