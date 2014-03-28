class ListingsController < ApplicationController

  def new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.save
    redirect_to @listing
  end

  def show
    @listing = Listing.find(params[:id])
  end

binding.pry

private

  def listing_params
    params.require(:listing).permit(
      :card,
      :edition,
      :card_type,
      :condition,
      :quantity,
      :price,
      :description,
      :image_front,
      :image_back)
  end


end
