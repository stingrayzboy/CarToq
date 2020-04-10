require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  let(:vehicle) { create(:vehicle) }
  before do
  	search,vehicles = Vehicle.get_vehicles(nil,nil)
  	assign(:search,search)
  	assign(:vehicles,vehicles)
  	render 'home/listing.html.erb'
  end
  it "should render the table" do
  	expect(rendered).to match(/Listing Vehicles/)
  end
end
