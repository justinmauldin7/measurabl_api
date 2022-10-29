require 'rails_helper'

describe 'Sites API' do
  it "can get a single site" do
    portfolio_1 = Portfolio.create(portfolio_name: "United States Fund", company_name: "ACME Inc.", company_size: 1000, country: "United States")
    site_1 = Site.create(portfolio: portfolio_1, site_name: "Larimer Plaza", site_address: "123 Main St. Denver, CO 80203", building_type: "office building")

    get "/api/v1/sites/#{site_1.id}"

    site = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful

    expect(site).to have_key(:id)
    expect(site[:id]).to eq(site_1.id)

    expect(site).to have_key(:portfolio_id)
    expect(site[:portfolio_id]).to eq(portfolio_1.id)

    expect(site).to have_key(:site_name)
    expect(site[:site_name]).to be_a(String)
    expect(site[:site_name]).to eq(site_1.site_name)

    expect(site).to have_key(:site_address)
    expect(site[:site_address]).to be_a(String)
    expect(site[:site_address]).to eq(site_1.site_address)

    expect(site).to have_key(:building_type)
    expect(site[:building_type]).to be_a(String)
    expect(site[:building_type]).to eq(site_1.building_type)
  end

  it "can return a specific portfolio's associated sites" do
    portfolio_1 = Portfolio.create(portfolio_name: "United States Fund", company_name: "ACME Inc.", company_size: 1000, country: "United States")

    Site.create(portfolio: portfolio_1, site_name: "Larimer Plaza", site_address: "123 Main St. Denver, CO 80203", building_type: "office building")
    Site.create(portfolio: portfolio_1, site_name: "Shops at Fashion Valley", site_address: "7007 Friars Rd. San Diego, CA 92108", building_type: "mall")
    Site.create(portfolio: portfolio_1, site_name: "Mission Valley Outlets", site_address: "2640 Camino Del Rio San Diego, CA 92108", building_type: "outlet mall")

    get '/api/v1/sites', params: { portfolio_id: portfolio_1.id }

    expect(response).to be_successful

    sites = JSON.parse(response.body, symbolize_names: true)

    expect(sites.count).to eq(3)

    sites.each do |site|
      expect(site).to have_key(:id)
      expect(site[:id]).to be_an(Integer)

      expect(site).to have_key(:portfolio_id)
      expect(site[:portfolio_id]).to eq(portfolio_1.id)

      expect(site).to have_key(:site_name)
      expect(site[:site_name]).to be_a(String)

      expect(site).to have_key(:site_address)
      expect(site[:site_address]).to be_a(String)

      expect(site).to have_key(:building_type)
      expect(site[:building_type]).to be_a(String)
    end
  end
end
