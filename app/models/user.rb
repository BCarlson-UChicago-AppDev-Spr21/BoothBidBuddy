class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:backpacked_courses, { :class_name => "BackpackedSection", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:course_comments, { :class_name => "Comment", :foreign_key => "user_id", :dependent => :destroy })

end
