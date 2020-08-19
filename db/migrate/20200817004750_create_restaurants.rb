class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name,      null: false
      t.string :beer,      null: false
      t.integer :genre_id, null: false
      t.integer :prefecture_id, null: false
      t.string :city,      null: false
      t.string :address,   null: false
      t.references :user,  null: false, index: true, foreign_key: true
      

      t.timestamps
    end
  end
end
