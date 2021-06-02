class Course < ApplicationRecord

  has_many(:course_comments, { :class_name => "Comment", :foreign_key => "course_id", :dependent => :destroy })

  has_many(:sections, { :class_name => "Section", :foreign_key => "course_id", :dependent => :destroy })

end
