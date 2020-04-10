require 'rails_helper'

RSpec.describe 'Homes', type: :request do
  describe 'GET /' do
    it 'returns http success' do
      get root_path
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
      expect(response.body).to include("Listing Vehicles")
    end
  end
  describe 'GET show/:id' do
  	let(:vehicle) { create(:vehicle) }
  	context 'JS' do
	  	it 'returns the details of the vehicle id provided' do
	  		get show_path(vehicle),xhr: true
	  		expect(response).to render_template(:show)
	  		expect(response).to have_http_status(:success)
	  		expect(response.body).to include(vehicle.vin)
		  	expect(response.body).to include(vehicle.grade.to_s)
		  	expect(response.body).to include(vehicle.stocknumber.to_s)
		  	expect(response.body).to include(vehicle.make)
		  	expect(response.body).to include(vehicle.model)
		  	expect(response.body).to include(vehicle.series)
		  	expect(response.body).to include(vehicle.year.to_s)
		  	expect(response.body).to include(vehicle.price.to_s)
		  	expect(response.body).to include(vehicle.body)
		  	expect(response.body).to include(vehicle.cylinders.to_s)
		  	expect(response.body).to include(vehicle.displacement.to_s)
		  	expect(response.body).to include(vehicle.exterior)
		  	expect(response.body).to include(vehicle.interior)
		  	expect(response.body).to include(vehicle.mileage.to_s)
		  	expect(response.body).to include(vehicle.transmission)
		  	expect(response.body).to include(vehicle.upholstery)
		  	expect(response.body).to include(vehicle.enddate.to_s)
		  	expect(response.body).to include(vehicle.abglocation)
		  	expect(response.body).to include(vehicle.buydate.to_s)
		  	expect(response.body).to include(vehicle.buyername)
		  	expect(response.body).to include(vehicle.watchedby)
		  	expect(response.body).to include(vehicle.dealershipname)
		  	expect(response.body).to include(vehicle.drive_train)
		  	expect(response.body).to include(vehicle.condition_report)
		  	expect(response.body).to include(vehicle.sales_rep)
	  	end
  	end
  	context 'HTML' do
  		it 'returns the details of the vehicle id provided' do
	  		get show_path(vehicle)
	  		expect(response).to have_http_status(:success)
	  		expect(response.body).to include(vehicle.vin)
		  	expect(response.body).to include(vehicle.grade.to_s)
		  	expect(response.body).to include(vehicle.stocknumber.to_s)
		  	expect(response.body).to include(vehicle.make)
		  	expect(response.body).to include(vehicle.model)
		  	expect(response.body).to include(vehicle.series)
		  	expect(response.body).to include(vehicle.year.to_s)
		  	expect(response.body).to include(vehicle.price.to_s)
		  	expect(response.body).to include(vehicle.body)
		  	expect(response.body).to include(vehicle.cylinders.to_s)
		  	expect(response.body).to include(vehicle.displacement.to_s)
		  	expect(response.body).to include(vehicle.exterior)
		  	expect(response.body).to include(vehicle.interior)
		  	expect(response.body).to include(vehicle.mileage.to_s)
		  	expect(response.body).to include(vehicle.transmission)
		  	expect(response.body).to include(vehicle.upholstery)
		  	expect(response.body).to include(vehicle.enddate.to_s)
		  	expect(response.body).to include(vehicle.abglocation)
		  	expect(response.body).to include(vehicle.buydate.to_s)
		  	expect(response.body).to include(vehicle.buyername)
		  	expect(response.body).to include(vehicle.watchedby)
		  	expect(response.body).to include(vehicle.dealershipname)
		  	expect(response.body).to include(vehicle.drive_train)
		  	expect(response.body).to include(vehicle.condition_report)
		  	expect(response.body).to include(vehicle.sales_rep)
	  	end
  	end
  end
end
