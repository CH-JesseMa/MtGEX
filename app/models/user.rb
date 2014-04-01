# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  country         :string(255)
#  profile_img     :string(255)
#  warning         :integer
#  grader_level    :integer
#  created_at      :datetime
#  updated_at      :datetime
#  admin           :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  has_secure_password

  has_many :listings
  has_many :comments
  has_many :polls
  has_many :purchases
end
