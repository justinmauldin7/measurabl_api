require 'rails_helper'

describe Portfolio do
  describe 'validations' do
    it { should validate_presence_of(:portfolio_name) }
    it { should validate_presence_of(:company_name) }
    it { should validate_presence_of(:company_size) }
    it { should validate_presence_of(:country) }
  end
end