class RemoveColumnLikesFromPlaces < ActiveRecord::Migration[6.1]
  change_table :places do |t|
    t.remove :likes
  end
  end
