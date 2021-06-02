class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :title
      t.string :quarter
      t.string :year
      t.string :day
      t.string :time
      t.integer :instructor_id
      t.integer :phase_1_enrollment
      t.integer :phase_1_seats_available
      t.integer :phase_1_price
      t.integer :phase_2_enrollment
      t.integer :phase_2_seats_available
      t.string :phase_2_price
      t.integer :phase_new1_enrollment
      t.integer :phase_new1_seats_available
      t.integer :phase_new1_price
      t.integer :phase_new2_enrollment
      t.integer :phase_new_2_seats_available
      t.integer :phase_new2_price
      t.integer :course_id
      t.integer :section_number
      t.integer :phase_3_enrollment
      t.integer :phase_3_seats_available
      t.integer :phase_3_price
      t.integer :phase_4_enrollment
      t.integer :phase_4_seats_available
      t.integer :phase_4_price
      t.integer :total_seats_offered
      t.string :program
      t.integer :backpacked_sections_count

      t.timestamps
    end
  end
end
