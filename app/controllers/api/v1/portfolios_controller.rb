class Api::V1::PortfoliosController < ApplicationController
  def index
    portfolios = Portfolio.all

    render json: portfolios
  end

  def show
    portfolio = Portfolio.find_by_id(params[:id])

    render json: portfolio
  end
end
