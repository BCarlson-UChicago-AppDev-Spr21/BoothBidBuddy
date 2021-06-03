class CoursesController < ApplicationController
  def index
    matching_courses = Course.all

    @list_of_courses = matching_courses.order({ :course_number => :asc })

    render({ :template => "courses/index.html.erb" })
  end

  def search_results
    search = params.fetch("navsearch_query")
    @matching_courses = Course.where("course_number LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%").order({ :course_number => :asc })

    render({ :template => "courses/course_search.html.erb" })

    
  end

  def show
    the_id = params.fetch("path_id")

    matching_courses = Course.where({ :id => the_id })

    @the_course = matching_courses.at(0)
    @course_sections = @the_course.sections
    @course_instructors = @the_course.instructors.distinct
    render({ :template => "courses/show.html.erb" })
  end

  def create
    the_course = Course.new
    the_course.title = params.fetch("query_title")
    the_course.course_number = params.fetch("query_course_number")
    the_course.course_comments_count = params.fetch("query_course_comments_count")
    the_course.sections_count = params.fetch("query_sections_count")

    if the_course.valid?
      the_course.save
      redirect_to("/courses", { :notice => "Course created successfully." })
    else
      redirect_to("/courses", { :notice => "Course failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_course = Course.where({ :id => the_id }).at(0)

    the_course.title = params.fetch("query_title")
    the_course.course_number = params.fetch("query_course_number")
    the_course.course_comments_count = params.fetch("query_course_comments_count")
    the_course.sections_count = params.fetch("query_sections_count")

    if the_course.valid?
      the_course.save
      redirect_to("/courses/#{the_course.id}", { :notice => "Course updated successfully."} )
    else
      redirect_to("/courses/#{the_course.id}", { :alert => "Course failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_course = Course.where({ :id => the_id }).at(0)

    the_course.destroy

    redirect_to("/courses", { :notice => "Course deleted successfully."} )
  end
end
