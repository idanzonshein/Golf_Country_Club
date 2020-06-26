class RemoveParCourses < ActiveRecord::Migration[6.0]
  def change
    remove_column :courses, :par
  end
end
