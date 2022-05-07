class FixReferencesToNotification < ActiveRecord::Migration[6.1]
  change_table :notifications do |t|
    t.remove :user_id
    t.references :user
  end
end
