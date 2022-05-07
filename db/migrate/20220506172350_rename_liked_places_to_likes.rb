class RenameLikedPlacesToLikes < ActiveRecord::Migration[6.1]
  def change
    rename_table :liked_places, :likes
  end
end
