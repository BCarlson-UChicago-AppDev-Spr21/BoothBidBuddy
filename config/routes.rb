Rails.application.routes.draw do

  # Homepage Actions
  get("/", { :controller => "homepage", :action => "homepage" })

  # Courses Actions
  get("/courses", { :controller => "course", :action => "index" })

  
  # Professors Actions
  get("/professors", { :controller => "professor", :action => "index" })

  #User Actions
  get("/users/:user_id", { :controller => "user", :action => "my_backpack" })

end
