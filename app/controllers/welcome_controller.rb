class WelcomeController < ApplicationController
  def index
  end

  def add_card
    if params[:stripeTokenType] == 'card' and logged_user.is_a? Registrar
      card_detail = logged_user.add_card(params[:stripeToken], params[:stripeEmail])
      logged_user.exp_month = card_detail.exp_month
      logged_user.exp_year = card_detail.exp_year
      logged_user.save
      redirect_to root_path, notice: 'Card added successfully'
    else
      redirect_to root_path, notice: 'Please try again'
    end
  end


end
