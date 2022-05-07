class CreatePlaceLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :place_likes do |t|
      t.integer :user_id, null: false
      t.integer :place_id, null: false
      t.timestamps
    end
  end
end
