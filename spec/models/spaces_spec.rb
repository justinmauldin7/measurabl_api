require 'rails_helper'

describe Space do
  describe 'relationships' do
    it { should belong_to(:site) }
  end

  describe 'validations' do
    it { should validate_presence_of(:space_name) }
    it { should validate_presence_of(:property_type) }
    it { should validate_presence_of(:space_size) }
    it { should validate_presence_of(:monthly_price) }
  end
end
