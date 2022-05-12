class FixSubscribers < ActiveRecord::Migration[6.1]
  change_table :subscribers do |t|
    # t.change :user_id, :bigint
    # t.change :subscriber_id, :bigint

    # t.remove :subscriber_id
    add_reference :subscribers, :subscriber, references: :users, index: true
  end
end
