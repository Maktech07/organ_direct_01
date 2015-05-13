class StudentClass < ActiveRecord::Base
  belongs_to :grade_level_teacher

  has_many :class_members
  has_many :students, through: :class_members
  accepts_nested_attributes_for :class_members 

  def student_count
    count_result = 0
    if self.students != nil
        count_result = self.students.count
    end
    count_result
  end
end
