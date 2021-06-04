class BackpackedSectionsController < ApplicationController
  before_action(:force_user_sign_in)
  def index
    matching_backpacked_sections = BackpackedSection.where({ :user_id => @current_user.id })

    @list_of_backpacked_sections = matching_backpacked_sections.order({ :created_at => :desc })

    render({ :template => "backpacked_sections/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_backpacked_sections = BackpackedSection.where({ :id => the_id })

    @the_backpacked_section = matching_backpacked_sections.at(0)

    render({ :template => "backpacked_sections/show.html.erb" })
  end

  def create
    the_backpacked_section = BackpackedSection.new
    the_backpacked_section.user_id = params.fetch("query_user_id")
    the_backpacked_section.planned_bid = params.fetch("query_planned_bid")
    the_backpacked_section.section_id = params.fetch("query_section_id")

    if the_backpacked_section.valid?
      the_backpacked_section.save
      current_section = Section.where({ :id => the_backpacked_section.section_id })[0]
      redirect_to("/courses/#{current_section.course_id}", { :notice => "Backpacked section created successfully." })
    else
      redirect_to("/backpacked_sections", { :notice => "Backpacked section failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_backpacked_section = BackpackedSection.where({ :id => the_id }).at(0)

    the_backpacked_section.user_id = params.fetch("query_user_id")
    the_backpacked_section.planned_bid = params.fetch("query_planned_bid")
    the_backpacked_section.section_id = params.fetch("query_section_id")

    if the_backpacked_section.valid?
      the_backpacked_section.save
      redirect_to("/backpacked_sections", { :notice => "Backpacked section updated successfully."} )
    else
      redirect_to("/backpacked_sections", { :alert => "Backpacked section failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_backpacked_section = BackpackedSection.where({ :id => the_id }).at(0)
    current_section = Section.where({ :id => the_backpacked_section.section_id })[0]

    the_backpacked_section.destroy

    redirect_to("/courses/#{current_section.course_id}", { :notice => "Backpacked section deleted successfully."} )
  end
end
