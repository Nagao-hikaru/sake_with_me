class CreateSakes < ActiveRecord::Migration[6.0]
  def change
    create_table :sakes do |t|
      t.string :name, null: false
      t.string :rice_rate, null: false
      t.string :sake_degree, null: false
      t.integer :type_id, null: false
      t.integer :degree, null: false
      t.string :company, null: false
      t.string :rice
      t.references :user, null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
