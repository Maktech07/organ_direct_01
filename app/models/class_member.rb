class ClassMember < ActiveRecord::Base
  belongs_to :student_class
  belongs_to :student, :class_name => "Person", :foreign_key => "student_id"
end
