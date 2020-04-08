require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  let(:vehicle) { create(:vehicle) }
  it 'creates a vehicle' do
    count = Vehicle.count
    vehicle
    expect(Vehicle.count).to eq(count + 1)
  end
end
