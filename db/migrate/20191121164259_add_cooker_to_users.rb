class AddCookerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :cooker, :boolean
  end
end
