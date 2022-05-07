class FixSubscribers2 < ActiveRecord::Migration[6.1]
  change_table :subscribers do |t|
    t.remove :subscriber_id_id
    end
  end
