class AddReferencesToPlaces < ActiveRecord::Migration[6.1]
  change_table :places do |t|
    t.remove :user_id
    t.belongs_to :user
  end
end
