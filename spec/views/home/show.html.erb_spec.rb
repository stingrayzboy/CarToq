require 'rails_helper'

RSpec.describe "home/show.html.erb", type: :view do
  let(:vehicle) { create(:vehicle) }
  before do
  	assign(:vehicle,vehicle)
  	render 'home/show.html.erb'
  end
  it "should render the table" do
  	expect(rendered).to include(vehicle.vin)
  end
end
