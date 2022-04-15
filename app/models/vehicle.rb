class Vehicle < ApplicationRecord
  has_and_belongs_to_many :vehicle_colors
  belongs_to :vehicle_maker
end
