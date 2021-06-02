class Section < ApplicationRecord

  belongs_to(:instructor, { :required => false, :class_name => "Professor", :foreign_key => "instructor_id", :counter_cache => true })

  belongs_to(:course, { :required => false, :class_name => "Course", :foreign_key => "course_id" })

  has_many(:backpacked_sections, { :class_name => "BackpackedSection", :foreign_key => "section_id", :dependent => :destroy })

end
