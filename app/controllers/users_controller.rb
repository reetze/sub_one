class UsersController < ApplicationController
  skip_before_action(:force_user_sign_in, { :only => [:new_registration_form, :create] })
  
  def profile_form
    @sub_requests = SubRequest.where({ :sender_id => session.fetch(:user_id) , :found_sub => false }).all
    @user = User.where({ :id => session.fetch(:user_id)}).at(0)
    @playing_profiles = PlayingProfile.where({ :user_id => @user.id }).order({ :created_at => :desc })

    render({ :template => "users/profile.html.erb" })
  end

  def new_registration_form
    render({ :template => "user_sessions/sign_up.html.erb" })
  end

  def create
    @user = User.new
    @user.email = params.fetch("query_email")
    @user.password = params.fetch("query_password")
    @user.password_confirmation = params.fetch("query_password_confirmation")
    @user.first_name = params.fetch("query_first_name")
    @user.last_name = params.fetch("query_last_name")
    @user.coed_gender = params.fetch("query_gender")

    save_status = @user.save

    if save_status == true
      session.store(:user_id,  @user.id)
   
      redirect_to("/profile", { :notice => "User account created successfully."})
    else
      redirect_to("/user_sign_up", { :alert => "User account failed to create successfully."})
    end
  end
    
  def edit_registration_form
    render({ :template => "users/edit_profile.html.erb" })
  end

  def update
    @user = @current_user
    @user.email = params.fetch("query_email")
    @user.password = params.fetch("query_password")
    @user.password_confirmation = params.fetch("query_password_confirmation")
    @user.first_name = params.fetch("query_first_name")
    @user.last_name = params.fetch("query_last_name")
    
    if @user.valid?
      @user.save

      redirect_to("/", { :notice => "User account updated successfully."})
    else
      render({ :template => "users/edit_profile_with_errors.html.erb" })
    end
  end

  def destroy
    @current_user.destroy
    reset_session
    
    redirect_to("/", { :notice => "User account cancelled" })
  end

  
end
