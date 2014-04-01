class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.build(listing_params)
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

  def edit
    @listing = Listing.find(params[:id])
  end

  def update

    @listing = Listing.find(params[:id])

    if @listing.update(params[:listing].permit(
      :id,
      :status,
      :card,
      :edition,
      :card_type,
      :condition,
      :quantity,
      :price,
      :description,
      :image_front,
      :image_back))
      redirect_to @listing
    else
      render 'edit'
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path
  end

private

  def listing_params
    params.require(:listing).permit(
      :card,
      :status,
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
