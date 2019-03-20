class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )
    @product.save
    render "show.json.jbuilder"
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.update(
      name: params[:name] || @product.name ,
      price: params[:price] || @product.price,
      image_url: params[:image_url] || @product.image_url,
      description: params[:description] || @product.description,
      supplier_id: params[:supplier_id] || @product.supplier_id
    )
    # @product.name = params[:name] || @product.name
    # @product.price = params[:price] || @product.price
    # @product.image_url = params[:image_url] || @product.image_url
    # @product.description = params[:description] || @product.description
    # @product.save
    render "show.json.jbuilder"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render "destroy.json.jbuilder"
  end
end
