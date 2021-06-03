# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  comment      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  course_id    :integer
#  professor_id :integer
#  user_id      :integer
#
class Comment < ApplicationRecord

  belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id", :counter_cache => :course_comments_count })

  belongs_to(:professor, { :required => false, :class_name => "Professor", :foreign_key => "professor_id" })

  belongs_to(:course, { :required => false, :class_name => "Course", :foreign_key => "course_id", :counter_cache => :course_comments_count })


end
