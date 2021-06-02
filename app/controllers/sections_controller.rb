class SectionsController < ApplicationController
  def index
    matching_sections = Section.all

    @list_of_sections = matching_sections.order({ :created_at => :desc })

    render({ :template => "sections/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_sections = Section.where({ :id => the_id })

    @the_section = matching_sections.at(0)

    render({ :template => "sections/show.html.erb" })
  end

  def create
    the_section = Section.new
    the_section.title = params.fetch("query_title")
    the_section.quarter = params.fetch("query_quarter")
    the_section.year = params.fetch("query_year")
    the_section.day = params.fetch("query_day")
    the_section.time = params.fetch("query_time")
    the_section.instructor_id = params.fetch("query_instructor_id")
    the_section.phase_1_enrollment = params.fetch("query_phase_1_enrollment")
    the_section.phase_1_seats_available = params.fetch("query_phase_1_seats_available")
    the_section.phase_1_price = params.fetch("query_phase_1_price")
    the_section.phase_2_enrollment = params.fetch("query_phase_2_enrollment")
    the_section.phase_2_seats_available = params.fetch("query_phase_2_seats_available")
    the_section.phase_2_price = params.fetch("query_phase_2_price")
    the_section.phase_new1_enrollment = params.fetch("query_phase_new1_enrollment")
    the_section.phase_new1_seats_available = params.fetch("query_phase_new1_seats_available")
    the_section.phase_new1_price = params.fetch("query_phase_new1_price")
    the_section.phase_new2_enrollment = params.fetch("query_phase_new2_enrollment")
    the_section.phase_new_2_seats_available = params.fetch("query_phase_new_2_seats_available")
    the_section.phase_new2_price = params.fetch("query_phase_new2_price")
    the_section.course_id = params.fetch("query_course_id")
    the_section.section_number = params.fetch("query_section_number")
    the_section.phase_3_enrollment = params.fetch("query_phase_3_enrollment")
    the_section.phase_3_seats_available = params.fetch("query_phase_3_seats_available")
    the_section.phase_3_price = params.fetch("query_phase_3_price")
    the_section.phase_4_enrollment = params.fetch("query_phase_4_enrollment")
    the_section.phase_4_seats_available = params.fetch("query_phase_4_seats_available")
    the_section.phase_4_price = params.fetch("query_phase_4_price")
    the_section.total_seats_offered = params.fetch("query_total_seats_offered")
    the_section.program = params.fetch("query_program")
    the_section.backpacked_sections_count = params.fetch("query_backpacked_sections_count")

    if the_section.valid?
      the_section.save
      redirect_to("/sections", { :notice => "Section created successfully." })
    else
      redirect_to("/sections", { :notice => "Section failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_section = Section.where({ :id => the_id }).at(0)

    the_section.title = params.fetch("query_title")
    the_section.quarter = params.fetch("query_quarter")
    the_section.year = params.fetch("query_year")
    the_section.day = params.fetch("query_day")
    the_section.time = params.fetch("query_time")
    the_section.instructor_id = params.fetch("query_instructor_id")
    the_section.phase_1_enrollment = params.fetch("query_phase_1_enrollment")
    the_section.phase_1_seats_available = params.fetch("query_phase_1_seats_available")
    the_section.phase_1_price = params.fetch("query_phase_1_price")
    the_section.phase_2_enrollment = params.fetch("query_phase_2_enrollment")
    the_section.phase_2_seats_available = params.fetch("query_phase_2_seats_available")
    the_section.phase_2_price = params.fetch("query_phase_2_price")
    the_section.phase_new1_enrollment = params.fetch("query_phase_new1_enrollment")
    the_section.phase_new1_seats_available = params.fetch("query_phase_new1_seats_available")
    the_section.phase_new1_price = params.fetch("query_phase_new1_price")
    the_section.phase_new2_enrollment = params.fetch("query_phase_new2_enrollment")
    the_section.phase_new_2_seats_available = params.fetch("query_phase_new_2_seats_available")
    the_section.phase_new2_price = params.fetch("query_phase_new2_price")
    the_section.course_id = params.fetch("query_course_id")
    the_section.section_number = params.fetch("query_section_number")
    the_section.phase_3_enrollment = params.fetch("query_phase_3_enrollment")
    the_section.phase_3_seats_available = params.fetch("query_phase_3_seats_available")
    the_section.phase_3_price = params.fetch("query_phase_3_price")
    the_section.phase_4_enrollment = params.fetch("query_phase_4_enrollment")
    the_section.phase_4_seats_available = params.fetch("query_phase_4_seats_available")
    the_section.phase_4_price = params.fetch("query_phase_4_price")
    the_section.total_seats_offered = params.fetch("query_total_seats_offered")
    the_section.program = params.fetch("query_program")
    the_section.backpacked_sections_count = params.fetch("query_backpacked_sections_count")

    if the_section.valid?
      the_section.save
      redirect_to("/sections/#{the_section.id}", { :notice => "Section updated successfully."} )
    else
      redirect_to("/sections/#{the_section.id}", { :alert => "Section failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_section = Section.where({ :id => the_id }).at(0)

    the_section.destroy

    redirect_to("/sections", { :notice => "Section deleted successfully."} )
  end
end
