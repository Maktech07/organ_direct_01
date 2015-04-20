class GradeLevelTeacher < ActiveRecord::Base
  belongs_to :grade_level
  belongs_to :person
end
