class ChangeNotificationsTable < ActiveRecord::Migration[6.1]
  change_table :notifications do |t|
    t.rename :type, :notify_type
  end
end
