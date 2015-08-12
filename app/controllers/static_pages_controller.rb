class StaticPagesController < ApplicationController
   def index
   	render('landing_page')
   end

  def landing_page
    @products = Product.all
    @product = Product.new
  end
end
