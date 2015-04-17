class Person < ActiveRecord::Base
    has_many :person_role_types
    has_many :role_types, through: :person_role_types

    has_one :address_person
    has_one :address, through: :address_person

    accepts_nested_attributes_for :address_person
end
