class Api::V1::SitesController < ApplicationController
  def index
    portfolio = Portfolio.find_by_id(params[:portfolio_id])

    render json: portfolio.sites
  end
  
  def show
    site = Site.find_by_id(params[:id])

    render json: site
  end
end
