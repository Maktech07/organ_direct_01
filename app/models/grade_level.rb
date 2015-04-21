class GradeLevel < ActiveRecord::Base
    has_many :grade_level_teachers
    has_many :people, through: :grade_level_teachers

    accepts_nested_attributes_for :grade_level_teachers
end
