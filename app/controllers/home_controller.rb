class HomeController < ApplicationController
	def index
		@q = Vehicle.ransack(params[:q])
		@vehicles = @q.result(distinct: true).page(params[:page]).per(10)
		
		respond_to do |format|
			format.html
			format.js
		end
	end
end
