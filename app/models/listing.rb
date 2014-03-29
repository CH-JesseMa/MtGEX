class Listing < ActiveRecord::Base
  validates :card, presence: true
  validates :edition, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
  validates :image_front, presence: true
  validates :image_back, presence: true
end
