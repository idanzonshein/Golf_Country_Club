class CreateHoles < ActiveRecord::Migration[6.0]
  def change
    create_table :holes do |t|
      t.integer :length
      t.integer :par_score
      t.integer :course_id
      t.boolean :water_hazard, default: false

      t.timestamps
    end
  end
end
