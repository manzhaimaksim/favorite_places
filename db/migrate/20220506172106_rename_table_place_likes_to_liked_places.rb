class RenameTablePlaceLikesToLikedPlaces < ActiveRecord::Migration[6.1]
  def change
  rename_table :likes, :liked_places
end
end
