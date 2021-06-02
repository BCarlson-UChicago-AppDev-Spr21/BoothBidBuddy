# == Schema Information
#
# Table name: courses
#
#  id                    :integer          not null, primary key
#  course_comments_count :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Course < ApplicationRecord

  has_many(:course_comments, { :class_name => "Comment", :foreign_key => "course_id", :dependent => :destroy })

  has_many(:sections, { :class_name => "Section", :foreign_key => "course_id", :dependent => :destroy })

end
