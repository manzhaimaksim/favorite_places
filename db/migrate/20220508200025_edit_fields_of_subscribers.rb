class EditFieldsOfSubscribers < ActiveRecord::Migration[6.1]
  def change
    rename_column(:subscribers, :user, :user_id)
    remove_columns(:subscribers, :sub)
  end
end
