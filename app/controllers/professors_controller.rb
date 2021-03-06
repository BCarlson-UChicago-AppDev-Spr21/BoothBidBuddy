class ProfessorsController < ApplicationController
  def index
    matching_professors = Professor.all

    @list_of_professors = matching_professors.order({ :created_at => :desc })

    render({ :template => "professors/index.html.erb" })
  end

  def search_professors
    search = params.fetch("prof_query")
    matching_professors = Professor.where("name LIKE ?", "%#{search}%")

    @list_of_professors = matching_professors.order({ :created_at => :desc })

    render({ :template => "professors/professor_search.html.erb" })

  end

  def show
    the_id = params.fetch("path_id")

    matching_professors = Professor.where({ :id => the_id })

    @the_professor = matching_professors.at(0)
    @professor_sections = @the_professor.sections
    @first_section = @professor_sections.order({ :id => :desc})[0]

    render({ :template => "professors/show.html.erb" })
  end

  def create
    the_professor = Professor.new
    the_professor.name = params.fetch("query_name")
    the_professor.sections_count = params.fetch("query_sections_count")

    if the_professor.valid?
      the_professor.save
      redirect_to("/professors", { :notice => "Professor created successfully." })
    else
      redirect_to("/professors", { :notice => "Professor failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_professor = Professor.where({ :id => the_id }).at(0)

    the_professor.name = params.fetch("query_name")
    the_professor.sections_count = params.fetch("query_sections_count")

    if the_professor.valid?
      the_professor.save
      redirect_to("/professors/#{the_professor.id}", { :notice => "Professor updated successfully."} )
    else
      redirect_to("/professors/#{the_professor.id}", { :alert => "Professor failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_professor = Professor.where({ :id => the_id }).at(0)

    the_professor.destroy

    redirect_to("/professors", { :notice => "Professor deleted successfully."} )
  end
end
