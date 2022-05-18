class AddTitleToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :title, :string
  end
end
