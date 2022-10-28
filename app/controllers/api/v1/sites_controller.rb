class Api::V1::SitesController < ApplicationController
  def index
  end
  
  def show
    site = Site.find_by_id(params[:id])

    render json: site
  end
end
