class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id, null:false
      t.integer :place_id, null:false
      t.text :text, null:false
      t.datetime :date, null:false
      t.timestamps
    end
  end
end
