class AddReferencesToNotification < ActiveRecord::Migration[6.1]
  change_table :photos do |t|
    t.references :user
  end
end
