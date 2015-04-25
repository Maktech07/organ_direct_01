class ClassMember < ActiveRecord::Base
  belongs_to :student_class
  belongs_to :person
end
