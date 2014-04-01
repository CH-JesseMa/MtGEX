class PurchasesController < ApplicationController

  def new
    @purchase = Purchase.new
  end

  def create
    @listing = Listing.find_by(id: purchase_params[:listing_id] )
    @purchase = Purchase.new(purchase_params)
    @purchase.save
    redirect_to listing_path(@listing)
  end

  def show

  end

private

  def purchase_params
    params.require(:purchase).permit(
      :id,
      :user_id,
      :listing_id)
  end
end
