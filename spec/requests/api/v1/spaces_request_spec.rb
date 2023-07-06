require 'rails_helper'

describe 'Spaces API' do
  it "can get a single space" do
    portfolio_1 = Portfolio.create(portfolio_name: "United States Fund", company_name: "ACME Inc.", company_size: 1000, country: "United States")

    site_1 = Site.create(portfolio: portfolio_1, site_name: "Larimer Plaza", site_address: "123 Main St. Denver, CO 80203", building_type: "office building")

    space_1 = Space.create(site: site_1, space_name: "Suite C", property_type: "commercial", space_size: 2000, monthly_price: 100000)

    get "/api/v1/spaces/#{space_1.id}"

    space = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful

    expect(space).to have_key(:id)
    expect(space[:id]).to eq(space_1.id)

    expect(space).to have_key(:site_id)
    expect(space[:site_id]).to eq(site_1.id)

    expect(space).to have_key(:space_name)
    expect(space[:space_name]).to be_a(String)
    expect(space[:space_name]).to eq(space_1.space_name)

    expect(space).to have_key(:property_type)
    expect(space[:property_type]).to be_a(String)
    expect(space[:property_type]).to eq(space_1.property_type)

    expect(space).to have_key(:space_size)
    expect(space[:space_size]).to be_a(Integer)
    expect(space[:space_size]).to eq(space_1.space_size)

    expect(space).to have_key(:monthly_price)
    expect(space[:monthly_price]).to be_a(Integer)
    expect(space[:monthly_price]).to eq(space_1.monthly_price)
  end

  it "can return a specific site's associated spaces" do
    portfolio_1 = Portfolio.create(portfolio_name: "United States Fund", company_name: "ACME Inc.", company_size: 1000, country: "United States")

    site_1 = Site.create(portfolio: portfolio_1, site_name: "Larimer Plaza", site_address: "123 Main St. Denver, CO 80203", building_type: "office building")

    Space.create(site: site_1, space_name: "Suite A", property_type: "commercial", space_size: 4000, monthly_price: 400000)
    Space.create(site: site_1, space_name: "Suite B", property_type: "commercial", space_size: 3000, monthly_price: 200000)
    Space.create(site: site_1, space_name: "Suite C", property_type: "commercial", space_size: 2000, monthly_price: 100000)

    get '/api/v1/spaces', params: { site_id: site_1.id }

    spaces = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(spaces.count).to eq(3)

    spaces.each do |space|
      expect(space).to have_key(:id)
      expect(space[:id]).to be_an(Integer)

      expect(space).to have_key(:site_id)
      expect(space[:site_id]).to eq(site_1.id)

      expect(space).to have_key(:space_name)
      expect(space[:space_name]).to be_a(String)

      expect(space).to have_key(:property_type)
      expect(space[:property_type]).to be_a(String)

      expect(space).to have_key(:space_size)
      expect(space[:space_size]).to be_a(Integer)

      expect(space).to have_key(:monthly_price)
      expect(space[:monthly_price]).to be_a(Integer)
    end
  end
end
