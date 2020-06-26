class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.integer :course_id
      t.datetime :date_time
      t.string :conditions
      t.integer :score

      t.timestamps
    end
  end
end
