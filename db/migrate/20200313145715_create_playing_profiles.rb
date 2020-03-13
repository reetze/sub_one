class CreatePlayingProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :playing_profiles do |t|
      t.integer :user_id
      t.boolean :format_indoor, { :default => false}
      t.boolean :format_grass, { :default => false}
      t.boolean :format_sand, { :default => false}
      t.boolean :players_six, { :default => false}
      t.boolean :players_four, { :default => false}
      t.boolean :players_three, { :default => false}
      t.boolean :players_two, { :default => false}
      t.boolean :league_gender_womens, { :default => false}
      t.boolean :league_gender_mens, { :default => false}
      t.boolean :league_gender_coed, { :default => false}
      t.boolean :level_recreational, { :default => false}
      t.boolean :level_intermediate, { :default => false}
      t.boolean :level_upper_intermediate, { :default => false}
      t.boolean :level_competitive, { :default => false}
      t.boolean :comp_level_aa, { :default => false}
      t.boolean :comp_level_a, { :default => false}
      t.boolean :comp_level_bb, { :default => false}
      t.boolean :comp_level_b, { :default => false}
      t.boolean :position_setter, { :default => false}
      t.boolean :position_outside_hitter, { :default => false}
      t.boolean :position_rightside_hitter, { :default => false}
      t.boolean :position_middle_hitter, { :default => false}
      t.boolean :position_libero, { :default => false}
      t.boolean :position_player, { :default => false}
      t.string :coed_gender
      t.timestamps
    end
  end
end
