class BackpackedSection < ApplicationRecord

  belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id", :counter_cache => :backpacked_courses_count })
  
  belongs_to(:section, { :required => false, :class_name => "Section", :foreign_key => "section_id", :counter_cache => true })

end
