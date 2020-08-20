class CreateSakes < ActiveRecord::Migration[6.0]
  def change
    create_table :sakes do |t|

      t.timestamps
    end
  end
end
