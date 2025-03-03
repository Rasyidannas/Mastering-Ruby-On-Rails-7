class ShoppingcartController < ApplicationController
  def index
    @categories = get_response("https://fakestoreapi.com/products/categories").prepend("All Categories")
    @products = get_response("https://fakestoreapi.com/products")
  end

  private 
  def get_response(url)
    response = HTTParty.get(url)
    response.success? ? response : []
  end
end
