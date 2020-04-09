class Vehicle < ApplicationRecord
	def self.get_vehicles(q_string, page)
		search = Vehicle.ransack(q_string)
		vehicles = search.result(distinct: true).page(page).per(10)
		search.build_condition if search.conditions.empty?
  		search.build_sort if search.sorts.empty?
  		return search,vehicles
	end
end
