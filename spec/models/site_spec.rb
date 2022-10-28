require 'rails_helper'

describe Site do
  describe 'relationships' do
    it { should belong_to(:portfolio) }
  end

  describe 'validations' do
    it { should validate_presence_of(:site_name) }
    it { should validate_presence_of(:site_address) }
    it { should validate_presence_of(:building_type) }
  end
end
