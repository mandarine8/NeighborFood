class DeleteColumnsFromDishes < ActiveRecord::Migration[5.2]
  def change
    remove_column :dishes, :longitude
    remove_column :dishes, :latitude
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
