ActiveAdmin.register PlayingProfile do
  permit_params :user_id, :format_indoor, :format_grass, :format_sand, :players_six, :players_four, :players_three, :players_two, :league_gender_womens, :league_gender_mens, :league_gender_coed, :level_recreational, :level_intermediate, :level_upper_intermediate, :level_competitive, :comp_level_aa, :comp_level_a, :comp_level_bb, :comp_level_b, :position_setter, :position_outside_hitter, :position_rightside_hitter, :position_middle_hitter, :position_libero, :position_player


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
