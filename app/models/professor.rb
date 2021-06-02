class Professor < ApplicationRecord

  has_many(:course_comments, { :class_name => "Comment", :foreign_key => "professor_id", :dependent => :nullify })

  has_many(:sections, { :class_name => "Section", :foreign_key => "instructor_id", :dependent => :destroy })

end
