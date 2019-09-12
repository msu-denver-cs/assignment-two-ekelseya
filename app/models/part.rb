class Part < ActiveRecord::Base
  belongs_to :factory
  # foreign key - factory_id
end
