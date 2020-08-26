class RemoveCityFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :city, :string
  end
end
