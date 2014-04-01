class PurchaseDetailsController < ApplicationController

  def create
    @listing = Listing.find_by(id: comment_params[:listing_id] )
    @purchasedetail = PurchaseDetail.new(comment_params)
    @purchase.save
    redirect_to listing_path(@listing)

  end

  def destroy
    @listing = Listing.find_by(id: params[:listing_id] )
    @purchasedetail = PurchaseDetail.find(params[:id])
    @purchasedetail.destroy
    redirect_to listing_path(@listing)
  end


private

  def comment_params
    params.require(:purchasedetail).permit(
      :id,
      :user_id,
      :body,
      :listing_id)
  end

end
