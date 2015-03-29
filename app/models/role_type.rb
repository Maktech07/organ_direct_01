class RoleType < ActiveRecord::Base
    has_many :person_role_types
    has_many :person, through: :person_role_types
end
