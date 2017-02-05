class HomeController < ApplicationController
  def index
    @products = Product.active.joins(:company).includes(:company).merge(Company.active)
  end
end
