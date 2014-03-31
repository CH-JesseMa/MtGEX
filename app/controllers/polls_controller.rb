class PollsController < ApplicationController
  def create
    @listing = Listing.find(params[:listing_id])
    @poll = @listing.polls.create(params[:poll].permit(:commenter, :body))
    redirect_to listing_path(@listing)
  end
end
