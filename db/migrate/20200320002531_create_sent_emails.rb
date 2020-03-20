class CreateSentEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :sent_emails do |t|
      t.integer :volunteer_id
      t.integer :sub_request_id

      t.timestamps
    end
  end
end
