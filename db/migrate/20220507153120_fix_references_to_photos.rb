class FixReferencesToPhotos < ActiveRecord::Migration[6.1]
  change_table :photos do |t|
    t.remove :user_id
  end
end
