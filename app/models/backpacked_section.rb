# == Schema Information
#
# Table name: backpacked_sections
#
#  id          :integer          not null, primary key
#  planned_bid :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  section_id  :integer
#  user_id     :integer
#
class BackpackedSection < ApplicationRecord

  belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id", :counter_cache => :backpacked_courses_count })
  
  belongs_to(:section, { :required => false, :class_name => "Section", :foreign_key => "section_id", :counter_cache => true })

end
