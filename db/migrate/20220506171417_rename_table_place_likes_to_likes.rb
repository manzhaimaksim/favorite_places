class RenameTablePlaceLikesToLikes < ActiveRecord::Migration[6.1]
  def change
    rename_table :place_likes, :likes
  end
  end
