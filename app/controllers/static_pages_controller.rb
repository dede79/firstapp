class StaticPagesController < ApplicationController
  def contact
  end

  def landing_page
    @featured_product = Product.limit(3)
  end
end
