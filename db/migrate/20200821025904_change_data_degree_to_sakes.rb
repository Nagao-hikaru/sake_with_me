class ChangeDataDegreeToSakes < ActiveRecord::Migration[6.0]
  def change
    change_column :sakes, :degree, :integer
  end
end
