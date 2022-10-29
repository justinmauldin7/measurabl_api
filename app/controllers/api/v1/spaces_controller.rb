class Api::V1::SpacesController < ApplicationController
  def index
    site = Site.find_by_id(params[:site_id])

    render json: site.spaces
  end

  def show
    space = Space.find_by_id(params[:id])

    render json: space
  end
end
