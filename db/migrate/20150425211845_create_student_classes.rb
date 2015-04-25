class CreateStudentClasses < ActiveRecord::Migration
  def change
    create_table :student_classes do |t|
      t.belongs_to :grade_level_teacher, index: true

      t.timestamps
    end
  end
end
