class CreateRoleTypes < ActiveRecord::Migration
  def change
    create_table :role_types do |t|
      t.string :roleName

      t.timestamps
    end
  end
end
