# == Schema Information
#
# Table name: listings
#
#  id          :integer          not null, primary key
#  card        :string(255)
#  edition     :string(255)
#  card_type   :string(255)
#  condition   :string(255)
#  price       :integer
#  description :text
#  image_front :text
#  image_back  :text
#  created_at  :datetime
#  updated_at  :datetime
#  status      :boolean
#  user_id     :integer
#

class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :poll, dependent: :destroy
  has_many :purchases, dependent: :destroy
  validates :card, presence: true
  validates :edition, presence: true
  validates :price, presence: true
  validates :image_front, presence: true
  validates :image_back, presence: true
end
