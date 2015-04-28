class GenderPerson < ActiveRecord::Base
  belongs_to :gender
  belongs_to :person
end
