class Factory < ActiveRecord::Base
  has_many :parts

  validates :name, presence: true
  validates :location, presence: true
end
