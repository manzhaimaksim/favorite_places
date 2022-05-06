class CreateSubscribers < ActiveRecord::Migration[6.1]
  def change
    create_table :subscribers do |t|
      t.integer :user, null: false
      t.integer :sub, null: false
      t.timestamps
    end
  end
end
