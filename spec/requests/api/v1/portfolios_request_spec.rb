require 'rails_helper'

describe 'Portfolios API' do
  it "can return all portfolios" do
    Portfolio.create(portfolio_name: "United States Fund", company_name: "ACME Inc.", company_size: 1000, country: "United States")
    Portfolio.create(portfolio_name: "Canada Fund", company_name: "Maple Leaf Holdings", company_size: 500, country: "Canada")
    Portfolio.create(portfolio_name: "Mexico Fund", company_name: "Mexico Corp.", company_size: 200, country: "Mexico")
    Portfolio.create(portfolio_name: "Brazil Fund", company_name: "Brazilian LLC", company_size: 100, country: "Brazil")
    Portfolio.create(portfolio_name: "Panama Fund", company_name: "Panama Non-Profit", company_size: 500, country: "Panama")

    get '/api/v1/portfolios'


    portfolios = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(portfolios.count).to eq(5)

    portfolios.each do |portfolio|
      expect(portfolio).to have_key(:id)
      expect(portfolio[:id]).to be_an(Integer)

      expect(portfolio).to have_key(:portfolio_name)
      expect(portfolio[:portfolio_name]).to be_a(String)

      expect(portfolio).to have_key(:company_name)
      expect(portfolio[:company_name]).to be_a(String)

      expect(portfolio).to have_key(:company_size)
      expect(portfolio[:company_size]).to be_an(Integer)

      expect(portfolio).to have_key(:country)
      expect(portfolio[:country]).to be_a(String)
    end
  end

  it "can get a single portfolio" do
    portfolio_1 = Portfolio.create(portfolio_name: "United States Fund", company_name: "ACME Inc.", company_size: 1000, country: "United States")

    get "/api/v1/portfolios/#{portfolio_1.id}"

    portfolio = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful

    expect(portfolio).to have_key(:id)
    expect(portfolio[:id]).to eq(portfolio_1.id)

    expect(portfolio).to have_key(:portfolio_name)
    expect(portfolio[:portfolio_name]).to be_a(String)
    expect(portfolio[:portfolio_name]).to eq(portfolio_1.portfolio_name)

    expect(portfolio).to have_key(:company_name)
    expect(portfolio[:company_name]).to be_a(String)
    expect(portfolio[:company_name]).to eq(portfolio_1.company_name)

    expect(portfolio).to have_key(:company_size)
    expect(portfolio[:company_size]).to be_an(Integer)
    expect(portfolio[:company_size]).to eq(portfolio_1.company_size)

    expect(portfolio).to have_key(:country)
    expect(portfolio[:country]).to be_a(String)
    expect(portfolio[:country]).to eq(portfolio_1.country)
  end
end
