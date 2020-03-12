class AddDefaultCol < ActiveRecord::Migration[6.0]
  def change
      add_column :sub_requests, :found_sub, :boolean, { :default => false}
  end
end
