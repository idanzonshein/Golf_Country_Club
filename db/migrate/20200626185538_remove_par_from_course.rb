class RemoveParFromCourse < ActiveRecord::Migration[6.0]
  def change
    remove_column :courses, :par_score
    remove_column :courses, :length
    rename_column :holes, :length, :distance
  end
end
