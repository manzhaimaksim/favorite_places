class AddReferencesToPlacesLikes < ActiveRecord::Migration[6.1]
  change_table :place_likes do |t|
    t.remove :user_id,:place_id
    t.belongs_to :user
    t.belongs_to :place
  end
end
