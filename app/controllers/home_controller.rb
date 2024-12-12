class HomeController < ApplicationController
  def LoadUsers
    base_url = "https://fakestoreapi.com/users"
    @users=CallRestAPI(base_url)
  end

  def CallRestAPI(base_url)
    response=HTTParty.get(base_url)
    response.success? ? response : []
  end
end
