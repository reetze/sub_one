class SubRequestsController < ApplicationController
  
  def email
    @requestor = params.fetch("sub_req")

    # if @sub_request.valid?
    #   @sub_request.save
    #   redirect_to("/sub_requests", { :notice => "Sub request created successfully." })
    # else
    #   redirect_to("/sub_requests", { :notice => "Sub request failed to create successfully." })
    # end
    
  end

  def step_two
    @competition_level = params.fetch("the_league_level")
    @league_gender = params.fetch("query_league_gender")
    @user = User.where({ :id => session.fetch(:user_id)}).at(0)

    render({ :template => "sub_requests/new_request_step_two.html.erb" })
  end

  def new_request_form
    @user = User.where({ :id => session.fetch(:user_id)}).at(0)
    
    render({ :template => "sub_requests/new_request.html.erb" })
  end
  
  def index
    @sub_requests = SubRequest.all.order({ :created_at => :desc })
    @user = User.where({ :id => session.fetch(:user_id)}).at(0)
    @profiles = PlayingProfile.where({ :user_id => @user.id })

    render({ :template => "sub_requests/get_in_the_game.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @sub_request = SubRequest.where({:id => the_id }).at(0)
    @user = User.where({ :id => session.fetch(:user_id)}).at(0)

    render({ :template => "sub_requests/show.html.erb" })
  end

  def create
    @sub_request = SubRequest.new
    @sub_request.sender_id = params.fetch("query_sender_id")
    @sub_request.league_environment = params.fetch("query_league_environment")
    @sub_request.league_format = params.fetch("query_league_format")
    @sub_request.league_gender = params.fetch("query_league_gender")
    @sub_request.league_level = params.fetch("query_league_level")
    @sub_request.competition_level = params.fetch("query_competition_level", "")
    @sub_request.position = params.fetch("query_position", "")
    @sub_request.game_location = params.fetch("query_game_location")
    @sub_request.game_datetime = params.fetch("query_game_datetime")
    @sub_request.player_gender = params.fetch("query_player_gender", "")

    if @sub_request.valid?
      @sub_request.save
      redirect_to("/sub_requests", { :notice => "Sub request created successfully." })
    else
      redirect_to("/sub_requests", { :notice => "Sub request failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @sub_request = SubRequest.where({ :id => the_id }).at(0)
    @sub_request.sender_id = params.fetch("query_sender_id")
    @sub_request.league_environment = params.fetch("query_league_environment")
    @sub_request.league_format = params.fetch("query_league_format")
    @sub_request.league_gender = params.fetch("query_league_gender")
    @sub_request.league_level = params.fetch("query_league_level")
    @sub_request.competition_level = params.fetch("query_competition_level", "")
    @sub_request.position = params.fetch("query_position", "")
    @sub_request.game_location = params.fetch("query_game_location")
    @sub_request.game_datetime = params.fetch("query_game_datetime")
    @sub_request.player_gender = params.fetch("query_player_gender", "")

    if @sub_request.valid?
      @sub_request.save
      redirect_to("/sub_requests/#{@sub_request.id}", { :notice => "Sub request updated successfully."} )
    else
      redirect_to("/sub_requests/#{@sub_request.id}", { :alert => "Sub request failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @sub_request = SubRequest.where({ :id => the_id }).at(0)

    @sub_request.destroy

    redirect_to("/sub_requests", { :notice => "Sub request deleted successfully."} )
  end
end
