class Api::V1::PortfoliosController < ApplicationController
  def index
    portfolios = Portfolio.all

    render json: portfolios
  end
end
