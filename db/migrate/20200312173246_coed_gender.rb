class CoedGender < ActiveRecord::Migration[6.0]
  def change
      add_column :sub_requests, :player_gender, :string
  end
end
