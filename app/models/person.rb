class Person < ActiveRecord::Base
    has_many :person_role_types
    has_many :role_types, through: :person_role_types

    has_one :address_person
    has_one :address, through: :address_person

    accepts_nested_attributes_for :address_person

    has_one :phone_number_person
    has_one :phone_number, through: :phone_number_person

    accepts_nested_attributes_for :phone_number_person

    has_one :email_person
    has_one :email, through: :email_person

    accepts_nested_attributes_for :email_person
end
