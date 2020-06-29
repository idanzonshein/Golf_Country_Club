class AddHoleNumberToHole < ActiveRecord::Migration[6.0]
  def change
    add_column :holes, :hole_number, :integer
  end
end
