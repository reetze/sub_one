# == Schema Information
#
# Table name: playing_profiles
#
#  id                        :integer          not null, primary key
#  coed_gender               :string
#  comp_level_a              :boolean          default(FALSE)
#  comp_level_aa             :boolean          default(FALSE)
#  comp_level_b              :boolean          default(FALSE)
#  comp_level_bb             :boolean          default(FALSE)
#  format_grass              :boolean          default(FALSE)
#  format_indoor             :boolean          default(FALSE)
#  format_sand               :boolean          default(FALSE)
#  league_gender_coed        :boolean          default(FALSE)
#  league_gender_mens        :boolean          default(FALSE)
#  league_gender_womens      :boolean          default(FALSE)
#  level_competitive         :boolean          default(FALSE)
#  level_intermediate        :boolean          default(FALSE)
#  level_recreational        :boolean          default(FALSE)
#  level_upper_intermediate  :boolean          default(FALSE)
#  players_four              :boolean          default(FALSE)
#  players_six               :boolean          default(FALSE)
#  players_three             :boolean          default(FALSE)
#  players_two               :boolean          default(FALSE)
#  position_libero           :boolean          default(FALSE)
#  position_middle_hitter    :boolean          default(FALSE)
#  position_outside_hitter   :boolean          default(FALSE)
#  position_player           :boolean          default(FALSE)
#  position_rightside_hitter :boolean          default(FALSE)
#  position_setter           :boolean          default(FALSE)
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  user_id                   :integer
#

#  :boolean          default(FALSE)
#  format_sand               :boolean          default(FALSE)
#  league_gender_coed        :boolean          default(FALSE)
#  league_gender_mens        :boolean          default(FALSE)
#  league_gender_womens      :boolean          default(FALSE)
#  level_competitive         :boolean          default(FALSE)
#  level_intermediate        :boolean          default(FALSE)
#  level_recreational        :boolean          default(FALSE)
#  level_upper_intermediate  :boolean          default(FALSE)
#  players_four              :boolean          default(FALSE)
#  players_six               :boolean          default(FALSE)
#  players_three             :boolean          default(FALSE)
#  players_two               :boolean          default(FALSE)
#  position_libero           :boolean          default(FALSE)
#  position_middle_hitter    :boolean          default(FALSE)
#  position_outside_hitter   :boolean          default(FALSE)
#  position_player           :boolean          default(FALSE)
#  position_rightside_hitter :boolean          default(FALSE)
#  position_setter           :boolean          default(FALSE)
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  user_id                   :integer
#

class PlayingProfile < ApplicationRecord


end
