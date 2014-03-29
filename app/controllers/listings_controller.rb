class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to @listing
    else
      render 'new'
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def index
    @listings = Listing.all(:order => "created_at DESC")
  end

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
