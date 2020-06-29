class RemoveAndUpdateDifficulty < ActiveRecord::Migration[6.0]
  def change
    change_column :courses, :difficulty, :string
  end
end
