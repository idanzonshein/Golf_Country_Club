class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.text :description
      t.integer :price
      t.integer :par_score
      t.integer :difficulty
      t.integer :length

      t.timestamps
    end
  end
end
