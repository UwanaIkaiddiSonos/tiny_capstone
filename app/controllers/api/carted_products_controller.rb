class Api::CartedProductsController < ApplicationController
  
  def create
    @carted_product = CartedProduct.new(
      user_id: 2,
      product_id: 3,
      order_id: nil,
      quantity: 3,
      status: "carted"
    )
    @carted_product.save
    render 'show.json.jbuilder'
  end
end
