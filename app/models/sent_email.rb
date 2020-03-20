# == Schema Information
#
# Table name: sent_emails
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  sub_request_id :integer
#  volunteer_id   :integer
#

class SentEmail < ApplicationRecord
end
