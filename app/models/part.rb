class Part < ActiveRecord::Base
  belongs_to :factory
  # foreign key - factory_id
  has_many :car_parts
  has_many :cars, through: :car_parts
end
