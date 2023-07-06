require 'rails_helper'

describe Portfolio do
  describe 'relationships' do
    it { should have_many(:sites) }
    it { should have_many(:spaces) }
  end

  describe 'validations' do
    it { should validate_presence_of(:portfolio_name) }
    it { should validate_presence_of(:company_name) }
    it { should validate_presence_of(:company_size) }
    it { should validate_presence_of(:country) }
  end
end
