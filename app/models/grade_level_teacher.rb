class GradeLevelTeacher < ActiveRecord::Base
  belongs_to :grade_level
  belongs_to :person

  def fullInfo
     gradeString = "No Grade"
     teacherString = "No Teacher"

     if self.grade_level_id != nil
        gLevel = GradeLevel.find(self.grade_level_id)
        if gLevel != nil
            gradeString = gLevel.name
        end
     end

     if self.person_id != nil
         teacher = Person.find(self.person_id)
         if teacher != nil
             teacherString = teacher.lastName
         end
     end

     gradeString + ' ' + teacherString

  end
end
