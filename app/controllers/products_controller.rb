class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    @suppliers = Supplier.all
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      description: params[:input_description],
      supplier_id: params[:supplier_id],
    )
    # @product.save!
    # redirect_to "/products/#{@product.id}"
    if @product.save
      redirect_to "/products/#{@product.id}"
    else
      @suppliers = Supplier.all
      render "new.html.erb"
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    @suppliers = Supplier.all
    render "edit.html.erb"
  end

  def update
    @product = Product.find_by(id: params[:product_id])
    @product.name = params[:input_name]
    @product.price = params[:input_price]
    @product.description = params[:input_description]
    @product.supplier_id = params[:supplier_id]
    @product.save
    redirect_to "/products"
  end
end
