class RemoveFieldsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column(:users, :email, if_exists: true)
    remove_column(:users, :date_of_registration, if_exists: true)
    remove_column(:users, :password, if_exists: true)
    remove_column(:users, :encrypted_password, if_exists: true)
  end
end
