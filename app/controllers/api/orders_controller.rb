class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = Order.where(user_id: current_user.id, status: "carted")
    render "index.json.jb"
  end

  def create
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = product.tax * params[:quantity].to_i
    calculated_total = product.total * params[:quantity].to_i

    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")

    @order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
      status: "carted",
    )
    @order.save
    render "show.json.jb"
  end

  def show
    @order = Order.find_by(id: params["id"])
    render "show.json.jb"
  end
end
