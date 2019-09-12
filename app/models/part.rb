class Part < ActiveRecord::Base
  belongs_to :factory_id
  # foreign key - factory_id
end
