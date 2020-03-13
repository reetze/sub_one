# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  coed_gender     :string
#  email           :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  validates :last_name, :presence => { :message => "You can choose to include just the first initial" }
  validates :first_name, :presence => true

  def first_and_last_init
    last = self.last_name.split("").at(0).upcase
    first = self.first_name

    return first.to_s + " " + last.to_s + "."
  end

end
