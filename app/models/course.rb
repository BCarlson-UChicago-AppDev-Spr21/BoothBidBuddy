# == Schema Information
#
# Table name: courses
#
#  id                    :integer          not null, primary key
#  course_comments_count :integer
#  course_number         :integer
#  sections_count        :integer
#  title                 :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Course < ApplicationRecord

  has_many(:course_comments, { :class_name => "Comment", :foreign_key => "course_id", :dependent => :destroy })

  has_many(:sections, { :class_name => "Section", :foreign_key => "course_id", :dependent => :destroy })

  has_many(:instructors, { :through => :sections, :source => :instructor })



end
