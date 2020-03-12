# == Schema Information
#
# Table name: sub_requests
#
#  id                 :integer          not null, primary key
#  competition_level  :string
#  found_sub          :boolean          default(FALSE)
#  game_datetime      :datetime
#  game_location      :text
#  league_environment :string
#  league_format      :string
#  league_gender      :string
#  league_level       :string
#  player_gender      :string
#  position           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  found_teammate_id  :integer
#  sender_id          :integer
#

class SubRequest < ApplicationRecord
end
