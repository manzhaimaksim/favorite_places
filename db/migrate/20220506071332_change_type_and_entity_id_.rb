class ChangeTypeAndEntityId < ActiveRecord::Migration[6.1]
  change_table :photos do |t|
    t.change :entity_id, :bigint
    t.rename :type, :entity_type
  end
end
