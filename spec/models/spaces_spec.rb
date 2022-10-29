require 'rails_helper'

describe Space do
  describe 'validations' do
    it { should validate_presence_of(:space_name) }
    it { should validate_presence_of(:property_type) }
    it { should validate_presence_of(:space_size) }
    it { should validate_presence_of(:monthly_price) }
  end
end
