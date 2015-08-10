class StaticPagesController < ApplicationController
  def contact
  end

  def landing_page
    @featured_product = Product.first
  end
end
