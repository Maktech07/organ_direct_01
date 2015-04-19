class EmailPerson < ActiveRecord::Base
  belongs_to :person
  belongs_to :email
end
