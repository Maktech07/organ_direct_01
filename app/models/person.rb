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

    has_one :name_title_person
    has_one :name_title, through: :name_title_person

    accepts_nested_attributes_for :name_title_person

    has_one :extension_person
    has_one :extension, through: :extension_person

    accepts_nested_attributes_for :extension_person



    def fullName
        self.firstName + ' ' + self.lastName
    end

end
