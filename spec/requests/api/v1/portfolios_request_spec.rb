require 'rails_helper'

describe 'Portfolios API' do
  it "can return all portfolios" do
    Portfolio.create(portfolio_name: "United States Fund", company_name: "ACME Inc.", company_size: 1000, country: "United States")
    Portfolio.create(portfolio_name: "Canada Fund", company_name: "Maple Leaf Holdings", company_size: 500, country: "Canada")
    Portfolio.create(portfolio_name: "Mexico Fund", company_name: "Mexico Corp.", company_size: 200, country: "Mexico")
    Portfolio.create(portfolio_name: "Brazil Fund", company_name: "Brazilian LLC", company_size: 100, country: "Brazil")
    Portfolio.create(portfolio_name: "Panama Fund", company_name: "Panama Non-Profit", company_size: 500, country: "Panama")

    get '/api/v1/portfolios'

    expect(response).to be_successful
    expect(Portfolio.count).to eq(5)
  end
end
