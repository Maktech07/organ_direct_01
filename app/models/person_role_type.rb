class PersonRoleType < ActiveRecord::Base
  belongs_to :person
  belongs_to :role_type
end
