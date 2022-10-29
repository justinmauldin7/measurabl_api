class Api::V1::SpacesController < ApplicationController
  def show
    space = Space.find_by_id(params[:id])

    render json: space
  end
end
