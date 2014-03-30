class User < ActiveRecord::Base
  has_secure_password

  has_many :listings
  has_many :comments
end
