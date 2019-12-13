class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  # inverse_of :before_action
  def index
    @products = Product.all
  end
end
