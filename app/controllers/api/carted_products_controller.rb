class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render "index.json.jb"
  end

  def create
    @carted_products = CartedProduct.new(
      product_id: params["product_id"],
      quantity: params["quantity"],
      user_id: current_user.id,
      status: "carted",
    )
    @carted_products.save
    render "show.json.jb"
  end
end
