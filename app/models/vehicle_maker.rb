class VehicleMaker < ApplicationRecord
  #validations
  validates :name, uniqueness: true

  #relations
  has_many :vehicles
end
