class RemovingTwoColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :sub_requests, :found_sub
  end
end
