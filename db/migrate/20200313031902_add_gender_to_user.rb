class AddGenderToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :coed_gender, :string
  end
end
