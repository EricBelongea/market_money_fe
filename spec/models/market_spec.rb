require "rails_helper"

RSpec.describe Market, type: :model do
  before(:each) do

  end

  describe '#initialize' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
  end
end