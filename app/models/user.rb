# == Schema Information
#
# Table name: users
#
#  id                       :integer          not null, primary key
#  backpacked_courses_count :integer
#  bid_wealth               :integer
#  course_comments_count    :integer
#  email                    :string
#  first_name               :string
#  graduation_year          :integer
#  last_name                :string
#  password_digest          :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:backpacked_courses, { :class_name => "BackpackedSection", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:course_comments, { :class_name => "Comment", :foreign_key => "user_id", :dependent => :destroy })

end
