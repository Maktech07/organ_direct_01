class CreatePersonRoleTypes < ActiveRecord::Migration
  def change
    create_table :person_role_types do |t|
      t.belongs_to :person, index: true
      t.belongs_to :role_type, index: true

      t.timestamps
    end
  end
end
