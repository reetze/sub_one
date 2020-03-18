class PlayingProfilesController < ApplicationController
  def profiles_form
    @user = User.where({ :id => session.fetch(:user_id)}).at(0)
    @playing_profiles = PlayingProfile.where({ :user_id => @user.id }).order({ :created_at => :desc })

    render({ :template => "playing_profiles/new_profile.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @playing_profile = PlayingProfile.where({:id => the_id }).at(0)

    render({ :template => "playing_profiles/show.html.erb" })
  end

  def create
    @playing_profile = PlayingProfile.new
    @playing_profile.user_id = params.fetch("query_user_id")
    @playing_profile.coed_gender = params.fetch("query_user_gender")
    @playing_profile.format_indoor = params.fetch("query_format_indoor", false)
    @playing_profile.format_grass = params.fetch("query_format_grass", false)
    @playing_profile.format_sand = params.fetch("query_format_sand", false)
    @playing_profile.players_six = params.fetch("query_players_six", false)
    @playing_profile.players_four = params.fetch("query_players_four", false)
    @playing_profile.players_three = params.fetch("query_players_three", false)
    @playing_profile.players_two = params.fetch("query_players_two", false)
    @playing_profile.league_gender_womens = params.fetch("query_league_gender_womens", false)
    @playing_profile.league_gender_mens = params.fetch("query_league_gender_mens", false)
    @playing_profile.league_gender_coed = params.fetch("query_league_gender_coed", false)
    @playing_profile.level_recreational = params.fetch("query_level_recreational", false)
    @playing_profile.level_intermediate = params.fetch("query_level_intermediate", false)
    @playing_profile.level_upper_intermediate = params.fetch("query_level_upper_intermediate", false)
    @playing_profile.level_competitive = params.fetch("query_level_competitive", false)
    if @playing_profile.level_competitive == true
      @playing_profile.comp_level_aa = params.fetch("query_comp_level_aa", false)
      @playing_profile.comp_level_a = params.fetch("query_comp_level_a", false)
      @playing_profile.comp_level_bb = params.fetch("query_comp_level_bb", false)
      @playing_profile.comp_level_b = params.fetch("query_comp_level_b", false)
    end
    if @playing_profile.level_competitive == true || @playing_profile.level_upper_intermediate == true || @playing_profile.level_intermediate == true
      @playing_profile.position_setter = params.fetch("query_position_setter", false)
    end
    if @playing_profile.level_competitive == true || @playing_profile.level_upper_intermediate == true
      @playing_profile.position_outside_hitter = params.fetch("query_position_outside_hitter", false)
      @playing_profile.position_rightside_hitter = params.fetch("query_position_rightside_hitter", false)
      @playing_profile.position_middle_hitter = params.fetch("query_position_middle_hitter", false)
      @playing_profile.position_libero = params.fetch("query_position_libero", false)
    end
    if @playing_profile.level_intermediate == true
      @playing_profile.position_player = params.fetch("query_position_player", false)
    end
    if @playing_profile.level_recreational == true
      @playing_profile.position_player = true
    end


    if @playing_profile.valid?
      @playing_profile.save
      redirect_to("/profile", { :notice => "Playing profile created successfully." })
    else
      redirect_to("/playing_profiles", { :notice => "Playing profile failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    @playing_profile = PlayingProfile.where({ :id => the_id }).at(0)

    @playing_profile.user_id = params.fetch("query_user_id")
    @playing_profile.coed_gender = params.fetch("query_user_gender")
    @playing_profile.format_indoor = params.fetch("query_format_indoor", false)
    @playing_profile.format_grass = params.fetch("query_format_grass", false)
    @playing_profile.format_sand = params.fetch("query_format_sand", false)
    @playing_profile.players_six = params.fetch("query_players_six", false)
    @playing_profile.players_four = params.fetch("query_players_four", false)
    @playing_profile.players_three = params.fetch("query_players_three", false)
    @playing_profile.players_two = params.fetch("query_players_two", false)
    @playing_profile.league_gender_womens = params.fetch("query_league_gender_womens", false)
    @playing_profile.league_gender_mens = params.fetch("query_league_gender_mens", false)
    @playing_profile.league_gender_coed = params.fetch("query_league_gender_coed", false)
    @playing_profile.level_recreational = params.fetch("query_level_recreational", false)
    @playing_profile.level_intermediate = params.fetch("query_level_intermediate", false)
    @playing_profile.level_upper_intermediate = params.fetch("query_level_upper_intermediate", false)
    @playing_profile.level_competitive = params.fetch("query_level_competitive", false)
    @playing_profile.comp_level_aa = params.fetch("query_comp_level_aa", false)
    @playing_profile.comp_level_a = params.fetch("query_comp_level_a", false)
    @playing_profile.comp_level_bb = params.fetch("query_comp_level_bb", false)
    @playing_profile.comp_level_b = params.fetch("query_comp_level_b", false)
    @playing_profile.position_setter = params.fetch("query_position_setter", false)
    @playing_profile.position_outside_hitter = params.fetch("query_position_outside_hitter", false)
    @playing_profile.position_rightside_hitter = params.fetch("query_position_rightside_hitter", false)
    @playing_profile.position_middle_hitter = params.fetch("query_position_middle_hitter", false)
    @playing_profile.position_libero = params.fetch("query_position_libero", false)
    @playing_profile.position_player = params.fetch("query_position_player", false)

    if @playing_profile.valid?
      @playing_profile.save
      redirect_to("/playing_profiles/#{@playing_profile.id}", { :notice => "Playing profile updated successfully."} )
    else
      redirect_to("/playing_profiles/#{@playing_profile.id}", { :alert => "Playing profile failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    @playing_profile = PlayingProfile.where({ :id => the_id }).at(0)

    @playing_profile.destroy

    redirect_to("/profile", { :notice => "Playing profile deleted successfully."} )
  end
end
