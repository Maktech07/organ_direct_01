class CreateDepartmentPeople < ActiveRecord::Migration
  def change
    create_table :department_people do |t|
      t.belongs_to :department, index: true
      t.belongs_to :person, index: true

      t.timestamps
    end
  end
end
