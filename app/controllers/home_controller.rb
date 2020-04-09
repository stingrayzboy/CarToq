class HomeController < ApplicationController
  def index
  	@vehicles = Vehicle.first 10
  end
end
