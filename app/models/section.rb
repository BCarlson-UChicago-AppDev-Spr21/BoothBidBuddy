# == Schema Information
#
# Table name: sections
#
#  id                          :integer          not null, primary key
#  backpacked_sections_count   :integer
#  day                         :string
#  phase_1_enrollment          :integer
#  phase_1_price               :integer
#  phase_1_seats_available     :integer
#  phase_2_enrollment          :integer
#  phase_2_price               :string
#  phase_2_seats_available     :integer
#  phase_3_enrollment          :integer
#  phase_3_price               :integer
#  phase_3_seats_available     :integer
#  phase_4_enrollment          :integer
#  phase_4_price               :integer
#  phase_4_seats_available     :integer
#  phase_new1_enrollment       :integer
#  phase_new1_price            :integer
#  phase_new1_seats_available  :integer
#  phase_new2_enrollment       :integer
#  phase_new2_price            :integer
#  phase_new_2_seats_available :integer
#  program                     :string
#  quarter                     :string
#  section_number              :integer
#  time                        :string
#  title                       :string
#  total_seats_offered         :integer
#  year                        :string
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  course_id                   :integer
#  instructor_id               :integer
#
class Section < ApplicationRecord

  belongs_to(:instructor, { :required => false, :class_name => "Professor", :foreign_key => "instructor_id", :counter_cache => true })

  belongs_to(:course, { :required => false, :class_name => "Course", :foreign_key => "course_id" })

  has_many(:backpacked_sections, { :class_name => "BackpackedSection", :foreign_key => "section_id", :dependent => :destroy })

end
