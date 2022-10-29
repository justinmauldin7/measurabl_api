class Api::V1::StatsController < ApplicationController
  def index
    if params[:site_id]
      record = Site.find_by_id(params[:site_id])
    elsif params[:portfolio_id]
      record = Portfolio.find_by_id(params[:portfolio_id])
    end

    space_sizes_array = record.spaces.pluck("space_size")

    total_square_footage = space_sizes_array.sum

    average_suare_footage = total_square_footage / space_sizes_array.size

    render json: create_payload(record, total_square_footage, average_suare_footage)
  end

  private

  def create_payload(record, total_square_footage, average_suare_footage)
    if record.class == Site
      payload = {
        site_id: record.id,
        site_name: record.site_name,
        total_square_footage: total_square_footage,
        average_suare_footage: average_suare_footage
      }
    elsif record.class == Portfolio
      payload = {
        portfolio_id: record.id,
        portfolio_name: record.portfolio_name,
        sites: record.sites.pluck("site_name"),
        total_square_footage: total_square_footage,
        average_suare_footage: average_suare_footage
      }
    end

    return payload
  end
end
