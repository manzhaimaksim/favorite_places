class AddReferencesToSubscribers < ActiveRecord::Migration[6.1]
  change_table :subscribers do |t|
    add_reference :subscribers, :subscriber_id, references: :users, index: true
  end
end
