class PaymentsController < ApplicationController
    def new
    end

	def create
	  @product = Product.find(params[:product_id]) #find the product listing to create the token,hence the hidden _field with product_id in form_tag
	  token = params[:stripeToken]
	  # Create the charge on Stripe's servers - this will charge the user's card
	  begin
	  charge = Stripe::Charge.create(
	  :amount => (@product.price * 100).to_i,
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
