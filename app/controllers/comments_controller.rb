class CommentsController < ApplicationController

  def create
    @listing = Listing.find(params[:listing_id])
    @comment = @listing.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to listing_path(@listing)
  end

  def delete
    @listing = Listing.find(params[:listing_id])
    @comment = @listing.comments.find(params[:id])
    @comment.destroy
    redirect_to listing_path(@listing)
  end
end
