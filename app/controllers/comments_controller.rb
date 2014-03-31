class CommentsController < ApplicationController

  def create
    @listing = Listing.find_by(id: comment_params[:listing_id] )
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to listing_path(@listing)

  end

  def destroy
    @listing = Listing.find_by(id: params[:listing_id] )
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to listing_path(@listing)
  end


private

  def comment_params
    params.require(:comment).permit(
      :id,
      :user_id,
      :body,
      :listing_id)
  end
end
