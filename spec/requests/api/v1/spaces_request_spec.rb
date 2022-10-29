require 'rails_helper'

describe 'Spaces API' do
  it "can get a single space" do
    space_1 = Space.create(space_name: "Suite C", property_type: "commercial", space_size: 2000, monthly_price: 100000)

    get "/api/v1/spaces/#{space_1.id}"

    space = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful

    expect(space).to have_key(:id)
    expect(space[:id]).to eq(space_1.id)

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
end
