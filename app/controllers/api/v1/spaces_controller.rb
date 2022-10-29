class Api::V1::SpacesController < ApplicationController
  def index
  end

  def show
    space = Space.find_by_id(params[:id])

    render json: space
  end
end
