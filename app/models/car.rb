class Car < ActiveRecord::Base
  has_many :cars_parts
  has_many :parts, through: :cars_parts

  validates :make, presence: true
  validates :model, presence: true
  validates :vin, presence: true

end
