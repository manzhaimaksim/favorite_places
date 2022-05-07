class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :user_id, null:false
      t.string :status, null:false
      t.string :type, null:false
      t.timestamps
    end
  end
end
