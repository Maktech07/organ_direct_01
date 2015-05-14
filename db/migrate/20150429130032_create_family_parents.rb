class CreateFamilyParents < ActiveRecord::Migration
  def change
    create_table :family_parents do |t|
      t.belongs_to :family, index: true
      t.belongs_to :parent, index: true

      t.timestamps
    end
  end
end
