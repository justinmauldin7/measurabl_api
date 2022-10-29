class Api::V1::StatsController < ApplicationController
  def index
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
