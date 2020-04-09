class HomeController < ApplicationController
	def index
		@search = Vehicle.ransack(params[:q])
		@vehicles = @search.result(distinct: true).page(params[:page]).per(10)
		@search.build_condition if @search.conditions.empty?
  		@search.build_sort if @search.sorts.empty?
		respond_to do |format|
			format.html
			format.js
		end
	end
end
