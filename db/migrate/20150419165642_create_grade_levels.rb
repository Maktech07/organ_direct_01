class CreateGradeLevels < ActiveRecord::Migration
  def change
    create_table :grade_levels do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
