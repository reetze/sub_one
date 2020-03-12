class AddFoundThriceToSubRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :sub_requests, :found_sub, :boolean
    add_column :sub_requests, :found_teammate_id, :integer
  end
end
