require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  it 'get_vehicles returns a search and vehicle' do
  	search,vehicles = Vehicle.get_vehicles(nil,nil)
    expect(search.class.inspect).to eq("Ransack::Search")
    expect(vehicles.class.inspect).to eq("Vehicle::ActiveRecord_Relation")
    expect(vehicles.last.class.to_s).to eq("Vehicle")
  end
end
