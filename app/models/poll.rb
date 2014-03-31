# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  listing_id :integer
#  created_at :datetime
#  updated_at :datetime
#  response   :integer
#

class Poll < ActiveRecord::Base
  belongs_to :listing
end
