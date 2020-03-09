class CreateSubRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_requests do |t|
      t.integer :sender_id
      t.string :league_environment
      t.string :league_format
      t.string :league_gender
      t.string :league_level
      t.string :competition_level
      t.string :position
      t.text :game_location
      t.datetime :game_datetime

      t.timestamps
    end
  end
end
