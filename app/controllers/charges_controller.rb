class ChargesController < ApplicationController



  def new
  end

  def create
    # Amount in cents
    @amount = 500
# byebug

    # customer = Stripe::Customer.create(:email => params[:stripeEmail],:source  => params[:stripeToken])
Stripe::Customer.retrieve(stripe_id)
    # charge = Stripe::Charge.create(
    #   :customer    => customer.id,
    #   :amount      => @amount,
    #   :description => 'Rails Stripe customer',
    #   :currency    => 'usd'
    # )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


  def stripe_customer
    Stripe::Customer.retrieve(stripe_id) if stripe_id
  end

def add_card
  byebug

  params[:stripeToken]
      stripe_customer.sources.create({source: params[:stripeToken]})

  
end
end
