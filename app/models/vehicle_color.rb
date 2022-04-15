class VehicleColor < ApplicationRecord
  #validations
  validates :name, uniqueness: true
  
  #relations
  has_and_belongs_to_many :Vehicle
end
