class PositionPerson < ActiveRecord::Base
  belongs_to :position
  belongs_to :person
end
