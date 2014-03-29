class Listing < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :card, presence: true
  validates :edition, presence: true
  validates :price, presence: true
  validates :image_front, presence: true
  validates :image_back, presence: true
end
