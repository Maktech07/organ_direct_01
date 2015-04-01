class Person < ActiveRecord::Base
    has_many :person_role_types
    has_many :role_types, through: :person_role_types
end
