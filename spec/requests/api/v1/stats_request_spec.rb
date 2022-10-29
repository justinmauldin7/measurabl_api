require 'rails_helper'

describe 'Stats API' do
  it "can return a specific site's associated spaces square footage" do
    portfolio_1 = Portfolio.create(portfolio_name: "United States Fund", company_name: "ACME Inc.", company_size: 1000, country: "United States")

    site_1 = Site.create(portfolio: portfolio_1, site_name: "Larimer Plaza", site_address: "123 Main St. Denver, CO 80203", building_type: "office building")

    Space.create(site: site_1, space_name: "Suite A", property_type: "commercial", space_size: 4000, monthly_price: 400000)
    Space.create(site: site_1, space_name: "Suite B", property_type: "commercial", space_size: 3000, monthly_price: 200000)
    Space.create(site: site_1, space_name: "Suite C", property_type: "commercial", space_size: 2000, monthly_price: 100000)

    space_sizes_array = site_1.spaces.pluck("space_size")

    total_square_footage = space_sizes_array.sum
    average_suare_footage = total_square_footage / space_sizes_array.size

    get '/api/v1/stats', params: { site_id: site_1.id }

    site = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful

    expect(site).to have_key(:site_id)
    expect(site[:site_id]).to be_an(Integer)
    expect(site[:site_id]).to eq(site_1.id)

    expect(site).to have_key(:site_name)
    expect(site[:site_name]).to be_a(String)
    expect(site[:site_name]).to eq(site_1.site_name)

    expect(site).to have_key(:total_square_footage)
    expect(site[:total_square_footage]).to be_an(Integer)
    expect(site[:total_square_footage]).to eq(total_square_footage)

    expect(site).to have_key(:average_suare_footage)
    expect(site[:average_suare_footage]).to be_an(Integer)
    expect(site[:average_suare_footage]).to eq(average_suare_footage)
  end
end
