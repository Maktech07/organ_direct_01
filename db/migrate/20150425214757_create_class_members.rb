class CreateClassMembers < ActiveRecord::Migration
  def change
    create_table :class_members do |t|
      t.belongs_to :student_class, index: true
      t.belongs_to :person, index: true

      t.timestamps
    end
  end
end
