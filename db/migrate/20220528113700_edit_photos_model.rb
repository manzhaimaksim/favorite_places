class EditPhotosModel < ActiveRecord::Migration[6.1]
  def change
    remove_column :photos, :entity_type
    remove_column :photos, :entity_id
    add_reference :photos, :user
    add_reference :photos, :place
    rename_column :photos, :image_url, :photo
  end
end
