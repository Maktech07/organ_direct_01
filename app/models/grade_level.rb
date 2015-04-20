class GradeLevel < ActiveRecord::Base
    has_one :grade_level_teacher
    has_one :person, through: :grade_level_teacher

    accepts_nested_attributes_for :grade_level_teacher
end
