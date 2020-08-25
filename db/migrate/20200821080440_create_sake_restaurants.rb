class CreateSakeRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :sake_restaurants do |t|
      t.references :sake, null: false, index: true, foreign_key: true
      t.references :restaurant, null: false, index: true, foreign_key: true
      t.references :user, null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
