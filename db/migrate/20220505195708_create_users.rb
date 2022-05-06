class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.date :date_of_birth, null: false
      t.datetime :date_of_registration, null: false
      t.string :sex, null: false
      t.string :password, null: false
      t.string :status, null: false
      t.timestamps
    end
  end
end
