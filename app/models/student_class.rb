class StudentClass < ActiveRecord::Base
  belongs_to :grade_level_teacher
end
