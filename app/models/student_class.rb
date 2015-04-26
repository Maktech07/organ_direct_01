class StudentClass < ActiveRecord::Base
  belongs_to :grade_level_teacher

  has_many :class_members
  has_many :people, through: :class_members
end
