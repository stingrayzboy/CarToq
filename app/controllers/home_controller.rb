class HomeController < ApplicationController
	def index
		@search,@vehicles = Vehicle.get_vehicles(params[:q], params[:page])
		respond_to do |format|
			format.html
			format.js
		end
	end
end
