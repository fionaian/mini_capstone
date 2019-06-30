class Api::ProductsController < ApplicationController
  def index
    @products = Product.all.order(:id)
    render "index.json.jb"
  end

  def create
    @product = Product.new(
      id: params["id"],
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    @product.save
    render "show.json.jb"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description
    @product.save
    render "show.json.jb"
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: { message: "Product successfully destroyed!" }
  end

  # def all_products_method
  #   @products = Product.all
  #   render "all_products.json.jb"
  # end

  # def first_product_method
  #   @product1 = Product.first
  #   render "first_product.json.jb"
  # end

  # def(second_product_method)
  #   @product2 = Product.second
  #   render "second_product.json.jb"
  # end

  # def third_product_method
  #   @product3 = Product.third
  #   render "third_product.json.jb"
  # end

  # def fourth_product_method
  #   @product4 = Product.fourth
  #   render "fourth_product.json.jb"
  # end

  # def one_product_method
  #   product_id = params["id"]
  #   @product = Product.find_by(id: product_id)
  #   render "one_product.json.jb"
  # end
end
