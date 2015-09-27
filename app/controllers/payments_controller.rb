class PaymentsController < ApplicationController
    def new
    end

	def create
	  token = params[:stripeToken]
	  # Create the charge on Stripe's servers - this will charge the user's card
	  begin
	  charge = Stripe::Charge.create(
	  :amount => 499000, # amount in cents, again
	  :currency => "gbp",
	  :source => token,
	  :description => params[:stripeEmail]
      )
	  rescue Stripe::CardError => e
	    # The card has been declined
	    flash[:error] = e.message
	  end
	end

	def show
	end
end
