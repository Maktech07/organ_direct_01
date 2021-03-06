class Person < ActiveRecord::Base

    has_many :person_role_types
    has_many :role_types, through: :person_role_types
    accepts_nested_attributes_for :person_role_types

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

    has_one :class_member
    has_one :student_class, through: :class_member
    accepts_nested_attributes_for :class_member

    has_one :room_person
    has_one :room, through: :room_person
    accepts_nested_attributes_for :room_person

    has_one :department_person
    has_one :department, through: :department_person
    accepts_nested_attributes_for :department_person

    has_one :position_person
    has_one :position, through: :position_person
    accepts_nested_attributes_for :position_person

    has_one :gender_person
    has_one :gender, through: :gender_person
    accepts_nested_attributes_for :gender_person


    def fullName
        self.firstName + ' ' + self.lastName
    end

end
