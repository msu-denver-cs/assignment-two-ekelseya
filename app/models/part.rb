class Part < ActiveRecord::Base
  belongs_to :factory

  has_many :cars_parts, dependent: :delete_all
  has_many :cars, through: :cars_parts

  validates :name, presence: true
  validates :quantity, presence: true
  validates :factory_id, presence: true

end
