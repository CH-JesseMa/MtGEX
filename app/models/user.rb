class User < ActiveRecord::Base
  has_secure_password

  has_many :listings
  has_many :comments
  has_many :polls
end
