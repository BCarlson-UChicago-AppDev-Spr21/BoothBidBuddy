Rails.application.routes.draw do

  # Routes for the Section resource:

  # CREATE
  post("/insert_section", { :controller => "sections", :action => "create" })
          
  # READ
  get("/sections", { :controller => "sections", :action => "index" })
  
  get("/sections/:path_id", { :controller => "sections", :action => "show" })
  
  # UPDATE
  
  post("/modify_section/:path_id", { :controller => "sections", :action => "update" })
  
  # DELETE
  get("/delete_section/:path_id", { :controller => "sections", :action => "destroy" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

  # Routes for the Backpacked section resource:

  # CREATE
  post("/insert_backpacked_section", { :controller => "backpacked_sections", :action => "create" })
          
  # READ
  get("/backpacked_sections", { :controller => "backpacked_sections", :action => "index" })
  
  get("/backpacked_sections/:path_id", { :controller => "backpacked_sections", :action => "show" })
  
  # UPDATE
  
  post("/modify_backpacked_section/:path_id", { :controller => "backpacked_sections", :action => "update" })
  
  # DELETE
  get("/delete_backpacked_section/:path_id", { :controller => "backpacked_sections", :action => "destroy" })

  #------------------------------

  # Routes for the Course resource:

  # CREATE
  post("/insert_course", { :controller => "courses", :action => "create" })
          
  # READ
  get("/courses", { :controller => "courses", :action => "index" })
  
  get("/courses/:path_id", { :controller => "courses", :action => "show" })
  
  # UPDATE
  
  post("/modify_course/:path_id", { :controller => "courses", :action => "update" })
  
  # DELETE
  get("/delete_course/:path_id", { :controller => "courses", :action => "destroy" })

  #------------------------------

  # Routes for the Professor resource:

  # CREATE
  post("/insert_professor", { :controller => "professors", :action => "create" })
          
  # READ
  get("/professors", { :controller => "professors", :action => "index" })
  
  get("/professors/:path_id", { :controller => "professors", :action => "show" })
  
  # UPDATE
  
  post("/modify_professor/:path_id", { :controller => "professors", :action => "update" })
  
  # DELETE
  get("/delete_professor/:path_id", { :controller => "professors", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Homepage Actions
  get("/", { :controller => "homepage", :action => "homepage" })

end
