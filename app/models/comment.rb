# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  listing_id :integer
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Comment < ActiveRecord::Base
  belongs_to :listing
  belongs_to :user
end
