class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.integer :course_comments_count

      t.timestamps
    end
  end
end
