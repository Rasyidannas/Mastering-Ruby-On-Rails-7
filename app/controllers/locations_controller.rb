class LocationsController < ApplicationController
  def states
    @states = Country.find(params[:country_id]).states
    render json: @states
  end
  
  def cities
    @cities = State.find(params[:state_id]).cities
    render json: @cities
  end
end
