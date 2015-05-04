class GradeLevelTeacher < ActiveRecord::Base
  belongs_to :grade_level
  belongs_to :teacher, :class_name => "Person", :foreign_key => "teacher_id"

  def fullInfo
     gradeString = "No Grade"
     teacherString = "No Teacher"

     if self.grade_level_id != nil
        gLevel = GradeLevel.find(self.grade_level_id)
        if gLevel != nil
            gradeString = gLevel.name
        end
     end

     if self.teacher_id != nil
         teacherObj = Person.find(self.teacher_id)
         if teacherObj != nil
             teacherString = teacherObj.lastName
         end
     end

     gradeString + ' ' + teacherString

  end
end
