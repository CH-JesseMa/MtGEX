class Purchase < ActiveRecord::Base
  belongs_to :listing
  has_many :users
end
