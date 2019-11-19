class AddThePriceToTheDishesTable < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :price, :integer
  end
end
