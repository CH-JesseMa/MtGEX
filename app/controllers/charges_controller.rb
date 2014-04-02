class ChargesController < ApplicationController
  def index
    @listing = Listing.find(params[:listing_id])
    redirect_to @listing
  end

  def new
  end

  def create

    @listing = Listing.find(params[:listing_id])
    # Amount in cents
    @amount = @listing.total_amount * 100

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'MtGEX customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path

  redirect_to root_path
  end

  private

  def charge_params
    params.require(:charge).permit(
      :id,
      :user_id,
      :listing_id,
      :total_amount,
      :stripeToken,
      :stripeEmail)
  end

end
