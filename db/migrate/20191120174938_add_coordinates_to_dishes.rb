class AddCoordinatesToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :latitude, :float
    add_column :dishes, :longitude, :float
  end
end
