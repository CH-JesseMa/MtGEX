class PollsController < ApplicationController

  def create
    @listing = Listing.find_by(id: poll_params[:listing_id] )
    @poll = Poll.new(poll_params)
    @poll.save
    redirect_to listing_path(@listing)
  end

private

  def poll_params
    params.require(:poll).permit(
      :id,
      :user_id,
      :response,
      :listing_id)
  end
end
