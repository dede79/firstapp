class StaticPagesController < ApplicationController

  def landing_page
    @products = Product.limit(3)
    @product = Product.new
  end
  
  def contact
  	
  end
  
end
