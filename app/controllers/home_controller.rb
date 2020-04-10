class HomeController < ApplicationController
	before_action :get_vehicle, except: [:index]
	def index
		@search,@vehicles = Vehicle.get_vehicles(params[:q], params[:page])
		respond_to do |format|
			format.html
			format.js
		end
	end

	def show
		respond_to do |format|
			format.html
			format.js
		end
	end

	private

	def get_vehicle
		@vehicle = Vehicle.find_by_id(params[:id])
	end
end
