class HomeController < ApplicationController
  def LoadUsers
    base_url = "https://fakestoreapi.com/users"
    @users=CallRestAPI(base_url)
  end

  def CallRestAPI(base_url)
    response=HTTParty.get(base_url)
    response.success? ? response : []
  end

  def LoadUsers2
    base_url = "https://fakestoreapi.com/users"
    @image = "https://i.pravatar.cc"
    @users=CallRestAPI(base_url)
  end

  def ShowUserDetails
    redirect_to LoadUserDetails_path(1)
  end

  def LoadUserDetails
    id = params[:id].to_i

    if id < 1 || id > 10
      redirect_to LoadUserDetails_path(1)
      return
    end

    response = HTTParty.get("https://fakestoreapi.com/users/#{id}")
    if response.success?
      @user = response
    end
  end
end
