class Api::ProductsController < ApplicationController
  def all_products_method
    @products = Product.all
    render "all_products.json.jb"
  end

  def first_product_method
    @product1 = Product.first
    render "first_product.json.jb"
  end

  def second_product_method
    @product2 = Product.second
    render "second_product.json.jb"
  end

  def third_product_method
    @product3 = Product.third
    render "third_product.json.jb"
  end

  def fourth_product_method
    @product4 = Product.fourth
    render "fourth_product.json.jb"
  end
end
