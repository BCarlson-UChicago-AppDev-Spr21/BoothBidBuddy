class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :course_number
      t.integer :course_comments_count
      t.integer :sections_count

      t.timestamps
    end
  end
end
