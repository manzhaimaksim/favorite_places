class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :type, null: false
      t.integer :entity_id, null: false
      t.string :image_url, null: false
      t.text :title, null: false
      t.text :alt, null: false
      t.timestamps
    end
  end
end
