object @vehicle
attribute :id, :model
node :make do |vehicle|
  vehicle.vehicle_maker.name
end

node :range do |vehicle|
  { unit: vehicle.range_unit, distance: vehicle.range }
end

node :colors do |vehicle|
  vehicle.vehicle_colors.pluck(:name)
end

node :price do |vehicle|
  "#{vehicle.price} #{vehicle.price_currency}"
end

node :photo do |vehicle|
  vehicle.photo_url
end