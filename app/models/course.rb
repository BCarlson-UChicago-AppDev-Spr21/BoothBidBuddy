# == Schema Information
#
# Table name: courses
#
#  id                    :integer          not null, primary key
#  course_comments_count :integer
#  title                 :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Course < ApplicationRecord
end
