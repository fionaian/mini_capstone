class Api::ProductsController < ApplicationController
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
end
