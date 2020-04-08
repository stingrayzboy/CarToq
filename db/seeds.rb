require 'csv'
vehicles = []
CSV.foreach(Rails.root + 'db/vehicles_list_2.csv', headers: true) do |row|
  vehicles << row.to_h.transform_keys(&:downcase).transform_keys { |k| k.gsub(' ', '_') }.transform_keys(&:to_sym)
end
locations = vehicles.map do |attrs|
  Vehicle.new(attrs)
end
Vehicle.import locations
