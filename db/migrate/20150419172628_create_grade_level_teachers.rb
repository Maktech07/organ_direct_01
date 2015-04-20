class CreateGradeLevelTeachers < ActiveRecord::Migration
  def change
    create_table :grade_level_teachers do |t|
      t.belongs_to :grade_level, index: true
      t.belongs_to :person, index: true

      t.timestamps
    end
  end
end
