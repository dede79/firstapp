class PaymentsController < ApplicationController

	def create
	  token = params[:stripeToken]
	  product = Product.find(params[:product_id])
	  # Create the charge on Stripe's servers - this will charge the user's card
	  begin
	    charge = Stripe::Charge.create(
	      :user => user_id,
	      :amount => product.price, # amount in pence, again
	      :currency => "gbp",
	      :source => token,
	      :description => params[:stripeEmail]
	    )
	  rescue Stripe::CardError => e
	    # The card has been declined
	    flash[:error] = e.message
	  end
	  UserMailer.order_email(@first_name, @email).deliver
      redirect_to product_path(@product)
	end

	def show
	end
end
