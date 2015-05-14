class CreateFamilyChildren < ActiveRecord::Migration
  def change
    create_table :family_children do |t|
      t.belongs_to :family, index: true
      t.belongs_to :child, index: true

      t.timestamps
    end
  end
end
