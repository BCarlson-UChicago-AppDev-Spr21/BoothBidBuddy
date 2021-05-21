class CourseController < ApplicationController

  def index
  

    render({ :template => "course_templates/course_index.html.erb"})

  end

end