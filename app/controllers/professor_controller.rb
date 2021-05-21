class ProfessorController < ApplicationController

  def index
  

    render({ :template => "professor_templates/professor_index.html.erb"})

  end

end