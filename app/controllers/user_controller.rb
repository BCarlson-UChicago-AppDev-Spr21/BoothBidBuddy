class UserController < ApplicationController

  def my_backpack
    
    @user_id = params.fetch(:user_id)

    render({ :template => "user_templates/user_backpack.html.erb"})

  end

end