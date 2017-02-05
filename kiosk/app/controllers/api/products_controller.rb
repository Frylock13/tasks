class Api::ProductsController < ApplicationController
  def index
    @products = Product.active.joins(:company).includes(:company).merge(Company.active)
    @products = @products.filter_by_name(params[:name]) if params[:name]

    render json: @products, each_serializer: ProductSerializer
  end
end
