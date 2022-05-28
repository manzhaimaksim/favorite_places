class AddDescriptionToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :description, :string
  end
end
