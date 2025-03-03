class ShoppingcartController < ApplicationController
  def index
    @categories = get_response("https://fakestoreapi.com/products/categories").prepend("All Categories")
    @products = get_response("https://fakestoreapi.com/products")
  end

  def product_list
    category_name = params[:category]
    if category_name == "All Categories"
      url="https://fakestoreapi.com/products"
    else
      url="https://fakestoreapi.com/products/category/#{category_name.gsub(' ', '%20')}"
    end
    @products=get_response(url)
  end

  private 
  def get_response(url)
    response = HTTParty.get(url)
    response.success? ? response : []
  end
end
