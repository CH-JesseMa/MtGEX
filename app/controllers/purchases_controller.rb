class PurchasesController < ApplicationController

  def create
    @listing = Listing.find_by(id: purchase_params[:listing_id] )
    @purchase = Purchase.new(purchase_params)
    @purchase.save
    redirect_to listing_path(@listing)
  end

private

  def purchase_params
    params.require(:purchase).permit(
      :id,
      :user_id,
      :listing_id,
      :status,
      :buyer_status,
      :seller_status,
      :buyer)
  end
end
