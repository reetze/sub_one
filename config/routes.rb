Rails.application.routes.draw do

  # Routes for the Playing profile resource:

  # CREATE
  post("/insert_playing_profile", { :controller => "playing_profiles", :action => "create" })
          
  # READ
  get("/playing_profiles", { :controller => "playing_profiles", :action => "profiles_form" })
  get("/playing_profiles/:path_id", { :controller => "playing_profiles", :action => "show" })
  
  # UPDATE
  
  post("/modify_playing_profile/:path_id", { :controller => "playing_profiles", :action => "update" })
  
  # DELETE
  get("/delete_playing_profile/:path_id", { :controller => "playing_profiles", :action => "destroy" })

  #------------------------------

  # Routes for the Sub request resource:

  # CREATE
  post("/insert_sub_request", { :controller => "sub_requests", :action => "create" })
  post("/create_sub_request", { :controller => "sub_requests", :action => "step_two" })
          
  # READ
  get("/", { :controller => "sub_requests", :action => "index" })
  get("/sub_requests", { :controller => "sub_requests", :action => "index" })
  get("/new_sub_request", { :controller => "sub_requests", :action => "new_request_form" })
  
  get("/sub_requests/:path_id", { :controller => "sub_requests", :action => "show" })
  
  # UPDATE
  
  post("/modify_sub_request/:path_id", { :controller => "sub_requests", :action => "update" })
  
  # DELETE
  get("/delete_sub_request/:path_id", { :controller => "sub_requests", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "users", :action => "new_registration_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "users", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "users", :action => "edit_registration_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "users", :action => "update" })
  # user profile
  get("/profile", { :controller => "users", :action => "profile_form" })     
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "users", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_sessions", :action => "new_session_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_sessions", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_sessions", :action => "destroy_cookies" })
             
  #------------------------------

  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
